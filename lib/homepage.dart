import 'package:flutter/material.dart';
import 'about_us.dart';
import 'LostPage/product_page.dart';
import 'i_found_something.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(Colors.grey[700]),
                      elevation: MaterialStateProperty.all(7.0),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FoundSomething()));
                  },
                  child: Text("I Found Something")),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(Colors.grey[700]),
                      elevation: MaterialStateProperty.all(7.0),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductPage()));
                  },
                  child: Text("I Lost Something")),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(Colors.grey[700]),
                      elevation: MaterialStateProperty.all(7.0),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                  child: Text("About Us"))
            ]),
      ),
    );
  }
}

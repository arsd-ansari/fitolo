// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';

class FoundSomething extends StatefulWidget {
  const FoundSomething({Key? key}) : super(key: key);

  @override
  _FoundSomethingState createState() => _FoundSomethingState();
}

class _FoundSomethingState extends State<FoundSomething> {
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.0,
          title: Text(
            "What You Found?",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              addImage(),
              const SizedBox(
                height: 20,
              ),
              productName(),
              const SizedBox(
                height: 20,
              ),
              const dateAndTime(),
              const SizedBox(
                height: 20,
              ),
              details(),
              SizedBox(
                height: 20,
              ),
              mobileNumber(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.resolveWith(
                          (states) => Size.infinite),
                      elevation:
                          MaterialStateProperty.resolveWith((states) => 2.0),
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black)),
                  onPressed: () {},
                  child: Text('Submit'),
                ),
              )
            ]),
          ),
        ));
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile! as PickedFile?;
    });
  }

  Widget productName() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
          )),
          labelText: 'Product Name',
          labelStyle: TextStyle(color: Colors.black)),
    );
  }

  Widget addImage() {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            takePhoto(ImageSource.camera);
          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 2.0,
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              child: Text(
                "Click To Add Image",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomSheet() {
    BuildContext? context;
    context = context;
    return Container(
      height: 100.0,
      width: MediaQuery.of(context!).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        children: [
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.camera),
              label: Text("Camera")),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.image),
              label: Text("Gallery")),
        ],
      ),
    );
  }

  Widget details() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
          )),
          labelText: 'Details',
          labelStyle: TextStyle(
            color: Colors.black,
          )),
      maxLines: 5,
      textAlign: TextAlign.start,
    );
  }

  Widget mobileNumber() {
    return TextFormField(
      decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
          )),
          labelText: 'Mobile Number',
          labelStyle: TextStyle(
            color: Colors.black,
          )),
    );
  }
}

// ignore: camel_case_types
class dateAndTime extends StatefulWidget {
  const dateAndTime({Key? key}) : super(key: key);

  @override
  _dateAndTimeState createState() => _dateAndTimeState();
}

// ignore: camel_case_types
class _dateAndTimeState extends State<dateAndTime> {
  DateTime? pickedDate;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    pickedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      onTap: _pickDate,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
          )),
          labelText: 'Date',
          labelStyle: TextStyle(color: Colors.black)),
    );
  }

  _pickDate() async {
    BuildContext? context;
    context = context;
    DateTime? date = await showDatePicker(
        context: context!,
        initialDate: pickedDate!,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));

    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }
}

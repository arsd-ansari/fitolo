// ignore: file_names
import 'package:flutter/material.dart';

import 'product_model.dart';

class IndividualPage extends StatelessWidget {
  IndividualPage({Key? key, required this.productModel}) : super(key: key);
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(productModel.productName!),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 3,
                    child: Image.asset(
                      productModel.image!,
                    ),
                  ),
                ),
              ),
              Container(
                height: 25,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[100],
                child: Text("Date",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3,
                child: Text(
                  productModel.date!,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 25,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[100],
                child: Text("Mobile Number",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3,
                child: Text(
                  productModel.mobileNumber!.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 25,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[100],
                child: Text("Product Details",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3,
                child: Text(
                  productModel.productDetail!,
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

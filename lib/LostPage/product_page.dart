import 'package:fitolo/LostPage/product_model.dart';
import 'package:flutter/material.dart';

import 'product_card.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<ProductModel> products = [
    ProductModel(
      productName: "Earphone",
      image: "assets/earphone.jpg",
      mobileNumber: 0123456789,
      date: "01-01-0001",
      productDetail:
          "afkjvnhiewoqyuior fv habvkjvbsjvhiohcvkjds  huhdvkjns vdvhkiuhvbvs vsivuhsjdbsnkj svsiusvksj isuhysihsdvs cviuhdsi",
    ),
    ProductModel(
      productName: "Camera",
      image: "assets/camera.jpg",
      mobileNumber: 0123456789,
      date: "01-01-0001",
      productDetail:
          "afkjvnhiewoqyuior fv habvkjvbsjvhiohcvkjds  huhdvkjns vdvhkiuhvbvs vsivuhsjdbsnkj svsiusvksj isuhysihsdvs cviuhdsi",
    ),
    ProductModel(
      productName: "Laptop",
      image: "assets/laptop.jpg",
      mobileNumber: 0123456789,
      date: "01-01-0001",
      productDetail:
          "afkjvnhiewoqyuior fv habvkjvbsjvhiohcvkjds  huhdvkjns vdvhkiuhvbvs vsivuhsjdbsnkj svsiusvksj isuhysihsdvs cviuhdsi",
    ),
    ProductModel(
      productName: "Watch",
      image: "assets/watch.jpg",
      mobileNumber: 0123456789,
      date: "01-01-0001",
      productDetail:
          "afkjvnhiewoqyuior fv habvkjvbsjvhiohcvkjds  huhdvkjns vdvhkiuhvbvs vsivuhsjdbsnkj svsiusvksj isuhysihsdvs cviuhdsi",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Lost Item"),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(Icons.filter_list),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) =>
                ProductCard(productModel: products[index])),
      ),
    );
  }
}

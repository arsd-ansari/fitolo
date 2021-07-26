import 'package:flutter/material.dart';

import 'i.dart';
import 'product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.productModel, this.offset})
      : super(key: key);
  final ProductModel productModel;
  final int? offset;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    IndividualPage(productModel: productModel)));
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(
                productModel.image!,
                width: 50,
                height: 50,
              ),
              title: Text(
                productModel.productName!,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: Text(productModel.date!),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20, left: 80),
              child: Divider(
                thickness: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}

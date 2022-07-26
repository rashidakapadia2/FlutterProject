import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key,this.address,this.age,required this.name,this.surname}) : super(key: key);

  final String name;
  final String? age;
  final String? address;
  final String? surname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Column(
  children: [
    Text("${name}"),
  Text('${age}'),
  Text("${address}"),
  Text('${surname}'),
  ],
      ),
    );
  }
}

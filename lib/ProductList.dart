import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProductDetails.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  static const str = "Hello World";
  TextEditingController nameController=TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        actions: [IconButton(onPressed: (){ print('${str}');}, icon: Icon(Icons.access_alarm))],
      ),
    body: Stack(
      children: [
        Image.network('https://picsum.photos/id/237/200/300',height: double.infinity,width: double.infinity,
      fit: BoxFit.cover,),
        Positioned(child: TextField(
         controller: addressController,
          style: TextStyle(
              color: Colors.white),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder( borderSide: BorderSide(color: Colors.green,width: 5)),
        ),),left: 20,right: 20,height: 100,top: 340,),
        Positioned(child: TextField(
          controller: nameController,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green,width: 5)),),
        ),left: 20,right: 20,top: 80,height: 200),
        Positioned(child: TextField(
          controller: ageController,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green,width: 5)),),),left: 20,right: 20,top:160,height: 100),
        Positioned(child: TextField(
          controller: surnameController,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green,width: 5)),),),left: 20,right: 20,height: 100, top: 240,),
      Positioned(
        bottom: 10, left: 120, right: 120,
          child: ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=>ProductDetails(name: nameController.text,address: addressController.text, age: ageController.text, surname: surnameController.text))); },
      child: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(Icons.account_tree),
        Text("Tree")],
      ),))
      ]
    ),

    );
  }
}

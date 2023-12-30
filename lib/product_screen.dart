import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Image.asset('assets/food/img_3.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Mayfield Bakery & \nCafe',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400)),
          ),

        ],
      ),
    );
  }
}

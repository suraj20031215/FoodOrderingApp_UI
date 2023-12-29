import 'package:flutter/material.dart';

class AllFeatured extends StatefulWidget {
  const AllFeatured({super.key});

  @override
  State<AllFeatured> createState() => _AllFeaturedState();
}

class _AllFeaturedState extends State<AllFeatured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Featured Partners',textScaleFactor: 1.0,)),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(context, index) {
        return   Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width:500,
                child: Image.asset('assets/images/img_5.png'),
              ),
              const Text('Krispy Creme',textScaleFactor: 1.3,),
              const Text('Colarodo, San Franci'),
            ],
          ),
        );
      }, ),
    );
  }
}

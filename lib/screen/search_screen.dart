import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Search',textScaleFactor: 1.3,),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: TextField(
                decoration: InputDecoration(
                  
                  border: OutlineInputBorder(borderSide: BorderSide(width: 1),borderRadius: BorderRadius.circular(10)),
                  hintText: 'Search on foodly ',
                  prefixIcon: const Icon(CupertinoIcons.search)
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text('Top Restaurants',textScaleFactor: 1.2,),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(context, index) {
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
            ),
          ],
        )
      ),
    );
  }
}

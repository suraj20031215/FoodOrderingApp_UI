import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../all_featured.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(

  title: const Center(
    child: Padding(
      padding: EdgeInsets.only(left: 50,top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        //  SizedBox(height: 40,),
          Text('DELIVERY TO',textScaleFactor: 0.7,style: TextStyle(color: Colors.red),),
          Text('HayStreet, Perth',textScaleFactor: 0.9,),
          SizedBox(height: 20,)
        ],
      ),
    ),
  ),
  actions: const [

    Padding(
      padding: EdgeInsets.only(right: 20,top: 20),
      child: Text('Filter',style: TextStyle(fontWeight:FontWeight.w600 ),),
    ),

  ],
),

      body:SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Container(
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 200,
        child: Swiper(
          itemBuilder: (BuildContext context,int index){
            return Card(child:  Image.asset("assets/images/img_5.png",fit: BoxFit.fill,),
            );
          },
          itemCount: 10,
          itemWidth: 300.0,
          itemHeight: 300,
          viewportFraction: 0.8,
          autoplay: true,
          scale: 0.9,
          layout: SwiperLayout.DEFAULT,
        ),
            ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Featured\nPatners',textScaleFactor: 1.8,style: TextStyle(fontWeight: FontWeight.w600)),

                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AllFeatured(),));
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Text('See all',textScaleFactor: 1.2,style: TextStyle(color: Colors.amber),),

                      ),
                    ),
                  ),
        
                ],
              ),
        
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             SizedBox(
                               width:300,
                               child: Image.asset('assets/images/img_5.png'),
                             ),
                              const Text('Krispy Creme',textScaleFactor: 1.3,),
                              const Text('Colarodo, San Franci'),
                            ],
                          ),
                        ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(
                           width:300,
                           child: Image.asset('assets/images/img_5.png'),
                         ),
                         const Text('Krispy Creme',textScaleFactor: 1.3,),
                         const Text('Colarodo, San Franci'),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Image.asset("assets/images/img_6.png"),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Best Picks\nRestaurants by \nteam',textScaleFactor: 1.6,style: TextStyle(fontWeight: FontWeight.w600),),

                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Text('See all',textScaleFactor: 1.2,style: TextStyle(color: Colors.amber),),

                    ),
                  ),

                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:300,
                            child: Image.asset('assets/images/img_5.png'),
                          ),
                          Text('Krispy Creme',textScaleFactor: 1.3,),
                          Text('Colarodo, San Franci'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width:300,
                            child: Image.asset('assets/images/img_5.png'),
                          ),
                          Text('Krispy Creme',textScaleFactor: 1.3,),
                          Text('Colarodo, San Franci'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('All Restaurants',textScaleFactor: 1.6,style: TextStyle(fontWeight: FontWeight.w600),),

                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Text('See all',textScaleFactor: 1.2,style: TextStyle(color: Colors.amber),),

                    ),
                  ),

                ],
              ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment:Alignment.center ,

                          child: Image.asset('assets/images/img_5.png'),
                        ),
                        Text("McDonald's",textScaleFactor: 1.3,),
                        Text('Hey street, perth City',textScaleFactor: 1.1,),
                      ],
                    ),
                  ),


            ]),
      ),



    );
  }
}

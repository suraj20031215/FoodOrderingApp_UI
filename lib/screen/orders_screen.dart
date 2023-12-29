import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Your Orders',style: TextStyle(fontWeight: FontWeight.w400),)),
      ),
      body: Container(
        child:Column(
          children: [
Padding(
  padding: EdgeInsets.all(12),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('UPCOMING ORDERS',textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.w300),),
      Text('CLEAR ALL'),
    ],

  )
),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Container(
                 margin: EdgeInsets.all(10),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(
                   fit: BoxFit.fitHeight,
                   image: AssetImage("assets/food/img.png")
                 )
                 ),
                  width:140,
                  height: 140,

                ),
                const SizedBox(
                  width: 220,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("Mc Donald's",textScaleFactor: 1.4,),
                       ),
                       SizedBox(
                           child: Padding(
                             padding: EdgeInsets.only(left: 10),
                             child: Text('Shortbread, chocolat Cookie Sandwich'),
                           )
                       ),
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text('\$\$ .  Chinese'),
                             Text('AUD10',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w600),),
                           ],
                         ),
                       )

                     ],
                  ),
                )
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/food/img_1.png")
                        )
                    ),
                    width:140,
                    height: 140,

                  ),
                  const SizedBox(
                    width: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Mc Donald's",textScaleFactor: 1.4,),
                        ),
                        SizedBox(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Shortbread, chocolat Cookie Sandwich'),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$\$ .  Chinese'),
                              Text('AUD10',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ) ,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/food/img_2.png")
                        )
                    ),
                    width:140,
                    height: 140,

                  ),
                  const SizedBox(
                    width: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Mc Donald's",textScaleFactor: 1.4,),
                        ),
                        SizedBox(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Shortbread, chocolat Cookie Sandwich'),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$\$ .  Chinese'),
                              Text('AUD10',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ) ,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Text('Proceed Payment',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.amber),)),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('PAST ORDERS',textScaleFactor: 1.3,style: TextStyle(fontWeight: FontWeight.w300),),
                  Text('CLEAR ALL')
                ],
              ),
            )

          ],
        )
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ConfirmOrders extends StatefulWidget {
  const ConfirmOrders({super.key});

  @override
  State<ConfirmOrders> createState() => _ConfirmOrdersState();
}

class _ConfirmOrdersState extends State<ConfirmOrders> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              ListTile(
          
                leading:const Icon(FontAwesomeIcons.one,size: 19,),
                  title: const Text('Cookie Sandwich',textScaleFactor: 1.3,),
                subtitle:  const Text('Shortbread, chocolat Turtle \nCookie Sandwich',textScaleFactor: 1.0,),
                trailing: Text('AUD\$10',style: TextStyle(color: Colors.amber[700],fontSize: 16),),
              ),
              const Divider(),
              ListTile(
          
                leading:const Icon(FontAwesomeIcons.one,size: 19),
                title: const Text('Cookie Sandwich',textScaleFactor: 1.3,),
                subtitle:  const Text('Shortbread, chocolat Turtle \nCookie Sandwich',textScaleFactor: 1.0,),
                trailing: Text('AUD\$10',style: TextStyle(color: Colors.amber[700],fontSize: 16),),
              ),
              const Divider(),
              ListTile(
          
                leading:const Icon(FontAwesomeIcons.two,size: 19),
                title: const Text('Cookie Sandwich',textScaleFactor: 1.3,),
                subtitle:  const Text('Shortbread, chocolat Turtle \nCookie Sandwich',textScaleFactor: 1.0,),
                trailing: Text('AUD\$10',style: TextStyle(color: Colors.amber[700],fontSize: 16),),
              ),
              const Divider(),
              const SizedBox(height: 30,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal',textScaleFactor: 1.6,style: TextStyle(
                     fontWeight: FontWeight.w400
                  ),),
                Text('AUD\$30',textScaleFactor: 1.0,style: TextStyle(fontWeight:  FontWeight.w400),
          
                )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery',textScaleFactor: 1.6,style: TextStyle(
                      fontWeight: FontWeight.w400
                  ),),
                  Text('\$0',textScaleFactor: 1.0,style: TextStyle(fontWeight:  FontWeight.w400),)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      textScaleFactor: 1.6,
                      text: const TextSpan(
          
          style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: 'Total',style: TextStyle(
                          fontWeight: FontWeight.w300
                      )),
                      TextSpan(text: '(incl. VAT)',style: TextStyle(
                          fontWeight: FontWeight.w400
                      ))
                    ]
                  )
                  ),
          
                  Text('AUD\$30',textScaleFactor: 1.0,style: TextStyle(color: Colors.amber[700]),)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
             ListTile(
                trailing:Icon(Icons.arrow_forward_ios),
              leading: Text('Add more item',textScaleFactor: 1.6,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.amber[800]),) ,
              ),
              const Divider(),
          
          const ListTile(
          trailing:Icon(Icons.arrow_forward_ios),
              leading: Text('Promo code',textScaleFactor: 1.6,style: TextStyle(fontWeight: FontWeight.w300),) ,
              ),
              const Divider(),
              SizedBox(
                height: 30,
              ),
          
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 380,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber[800],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                      onPressed: (){

                      }, child:
                      const Text('CHECKOUT (\$11.98)',style: TextStyle(color: Colors.white),
          
                      )
          
          
                  ),
                ),
              ),
          
            ],
          ),
        ),
      )
    );
  }
}

import 'package:demoo/screen/screen4.dart';
import 'package:flutter/material.dart';

class Screenthree extends StatefulWidget {
  const Screenthree({super.key});

  @override
  State<Screenthree> createState() => _ScreenthreeState();
}

class _ScreenthreeState extends State<Screenthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/img_10.png")
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(

              padding: const EdgeInsets.only(bottom: 110),
              child: SizedBox(
                width: 380,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber[700],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                    onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => const Screenfour(),));
                    }, child: Text('GET STARTED',style: TextStyle(color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

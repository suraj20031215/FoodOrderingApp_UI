import 'package:demoo/screen/screen2.dart';
import 'package:flutter/material.dart';

class Screenone extends StatefulWidget {
  const Screenone({super.key});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/img_8.png")
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
Navigator.push(context, MaterialPageRoute(builder: (context) => const Screentwo(),));
                }, child: Text('GET STARTED',style: TextStyle(color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

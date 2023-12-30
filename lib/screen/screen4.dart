import 'package:demoo/screen/screen3.dart';
import 'package:demoo/screen/signin_screen.dart';
import 'package:flutter/material.dart';

class Screenfour extends StatefulWidget {
  const Screenfour({super.key});

  @override
  State<Screenfour> createState() => _ScreenfourState();
}

class _ScreenfourState extends State<Screenfour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/img_11.png")
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninScreen(),));

                    }, child: Text('GET STARTED',style: TextStyle(color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

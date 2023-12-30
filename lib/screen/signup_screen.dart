import 'package:demoo/screen/signin_screen.dart';
import 'package:demoo/bottom_navbar/bottom_navbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Sign Up')),
      ),


      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Create Account',textScaleFactor: 2.5,style: TextStyle(fontWeight: FontWeight.w300),),
            ),
             Padding(
              padding: const EdgeInsets.only(bottom: 50,left: 10),
              child: RichText(
                text:  TextSpan(
                    children: [
                      TextSpan(text: 'Enter your Name, Email and Password \nfor sign up.  ',style: TextStyle(color: Colors.black)),
                      TextSpan(text: 'Already have account?', recognizer: TapGestureRecognizer()
                        ..onTap = () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninScreen(),));
                        }
                        ,style: TextStyle(color: Colors.amber)),

                    ],
              ),
            ),
    ),
            const Text('FULL NAME'),
            const TextField(decoration: InputDecoration(hintText: 'HARI KISHAN',suffixIcon: Icon(Icons.check)),),
            const SizedBox(height: 20,),
        const Text('EMAIL ADDRESS'),
            const TextField(decoration: InputDecoration(hintText: 'sk@gmail.com',suffixIcon: Icon(Icons.check)),),
            const SizedBox(height: 20,),
            const Text('PASSWORD'),
            const TextField(decoration: InputDecoration(hintText: '******',suffixIcon: Icon(Icons.visibility)),),
            const SizedBox(height: 20,),
            const Center(child: Text('Forget Password?')),
            const SizedBox(height: 20,),
            SizedBox(
              width: 380,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber[800],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavbar(),));
                  }, child: const Text('SIGN UP',style: TextStyle(color: Colors.white),)),
            ),
         const Center(child: Text('By Signing up you agree to our Terms')),

                   const Center(child: Text( 'Conditions & Privacy Policy.')),


            const SizedBox(height: 10,),
            const Center(child: Text('Or',textScaleFactor: 1.2,)),
            const SizedBox(height: 10,),

            SizedBox(
              width: 380,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[800],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavbar(),));
                  }, child: const Row(

                children: [
                  SizedBox(width: 60,),
                  Icon(FontAwesomeIcons.facebook,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text('CONNECT WITH FACEBOOK',style: TextStyle(color: Colors.white),

                  )
                ],
              )

              ),
            ),

            SizedBox(
              width: 380,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavbar(),));
                  }, child: const Row(

                children: [
                  SizedBox(width: 60,),
                  Icon(FontAwesomeIcons.google,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text('CONNECT WITH GOOGLE',style: TextStyle(color: Colors.white),

                  )
                ],
              )

              ),
            ),

          ],
        ),
      ),
    );
  }
}

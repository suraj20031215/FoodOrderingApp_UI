
import 'package:demoo/screen/signup_screen.dart';
import 'package:demoo/bottom_navbar/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign In')),
      ),


      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Welcome to Tamang \nFood Services',textScaleFactor: 2.5,style: TextStyle(fontWeight: FontWeight.w300),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50,left: 10),
              child: Text('Enter your Phone number or Email\n address for sign in. Enjoy your food :)',textScaleFactor: 1.2,style: TextStyle(fontWeight: FontWeight.w300),),
            ),

            Text('EMAIL ADDRESS'),
            TextField(decoration: InputDecoration(hintText: 'sk@gmail.com',suffixIcon: Icon(Icons.check)),),
            SizedBox(height: 20,),
            Text('PASSWORD'),
            TextField(decoration: InputDecoration(hintText: '******',suffixIcon: Icon(Icons.visibility)),),
            SizedBox(height: 20,),
            Center(child: Text('Forget Password?')),
            SizedBox(height: 20,),
            SizedBox(
              width: 380,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.amber[800],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavbar(),));
                  }, child: const Text('SIGN IN',style: TextStyle(color: Colors.white),)),
            ),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account"),
                SizedBox(width: 20,),
                InkWell(
                    onTap: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen(),));
                    },
                    child: Text("Create new account",style: TextStyle(color: Colors.amber),)),
              ],
            ),
            SizedBox(height: 10,),
            Center(child: Text('Or',textScaleFactor: 1.2,)),
            SizedBox(height: 10,),

            SizedBox(
              width: 380,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[800],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavbar(),));
                  }, child: Row(

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
                  }, child: Row(

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

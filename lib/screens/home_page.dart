import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/screens/signup.dart';

import '../models/widgets.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
         // mainAxisAlignment: Mai,
          children: [
            SizedBox(height: 12.h,),
            Image.asset("assets/images/logo_png.png", height: 60,width: 50,),
            SizedBox(height: 8.h,),
            Padding(
              padding: const EdgeInsets.fromLTRB(50,5,50,5),
              child: Container(
                height: 50,
                child: TextField(
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    ),
                    hintText: 'Login with Email',
                    hintStyle: GoogleFonts.lato(
                      color: Colors.grey,
                      fontSize: 14,


                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 1.h,),
            Padding(
              padding: const EdgeInsets.fromLTRB(50,5,50,5),
              child: Container(
                height: 50,
                child: TextField(

                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    ),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.lato(
                      color: Colors.grey,
                      fontSize: 14,


                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 3.h,),

            // Button

            Padding(
              padding: const EdgeInsets.fromLTRB(80,0,80,0),
              child: Container(
                height: 4.h,


                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup() ));
                      }, child: Text("Login", style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),))),
            ),
           SizedBox(
             height: 3.h,
           ),
            // Account Signup message
            Column(
              children: [
                Text("Don't have an account?", style: GoogleFonts.lato(
                  color: Colors.grey,
                  fontSize: 12,
                ),),
                SizedBox(height: 1.h,),
                Text("Sign Up Here",style: GoogleFonts.lato(
                  color: Colors.blueAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),

                SizedBox(
                  height: 5.h,
                ),

                Container(
                  width: 40.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),


                   // color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(15),),
                  ),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        iconEnabledColor: Colors.blueAccent,
                        hint: Text("English", style: GoogleFonts.lato(
                          color: Colors.blueAccent,
                          fontSize: 15,


                        ),),
                        elevation: 0,

                        focusColor: Colors.blueAccent,
                        items: <String>['Urdu', 'Arabic', 'Portuguese', 'Spanish'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),

      ),

    );
  }
}

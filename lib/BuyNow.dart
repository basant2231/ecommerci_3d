

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
class BuyNow extends StatelessWidget {
  const BuyNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Container(
  width: double.infinity,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '''THANK YOU FOR
         SHOPPING''',
              style: GoogleFonts.lato(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      Lottie.network('https://assets8.lottiefiles.com/packages/lf20_UnfRpxwc6d.json'),
                  SizedBox(width: 4.0,),
      GredientButton(onPressed: (){
        Navigator.pop(context);
      },
                  splashColor: Colors.orange,
                  colors: [
                    Colors.cyan,
                    Colors.deepPurple,                    
                  ], title: "Thank you"),
                  SizedBox(width: 2.0,),
    ],
  ),
),
    ),);
  }
}



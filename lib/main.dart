import 'package:ecommerci_3d/ProductData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark
    ));
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme:GoogleFonts.ptSansNarrowTextTheme(),
      primarySwatch: Colors.blue ),
      home: ProductDetail(),
    );
  }
}


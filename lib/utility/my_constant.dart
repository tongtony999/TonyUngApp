import 'package:flutter/material.dart';

class MyConstant {


static String rountIntro = '/introduction';
static String rountAuthen = '/authen';

  static Color primary = const Color (0xffFF4D67);
  static Color dark = Colors.black;
  static Color light = const Color (0xffEE8F90);

  TextStyle h1Style()=>TextStyle(
    fontSize: 36,
    color: dark,
    fontWeight: FontWeight.bold,
  );

TextStyle h2Style()=>TextStyle(
    fontSize: 18,
    color: dark,
    fontWeight: FontWeight.w700,
  );

  TextStyle h3Style()=>TextStyle(
    fontSize: 16,
    color: dark,
    fontWeight: FontWeight.normal,
  );

  TextStyle h3ActiveStyle()=>TextStyle(
    fontSize: 16,
    color: primary,
    fontWeight: FontWeight.w500,
  );
}
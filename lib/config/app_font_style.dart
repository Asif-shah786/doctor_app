import 'package:flutter/material.dart';

class AppFontStyle{


  //style
 static TextStyle blue16semiBold = TextStyle(fontWeight: FontWeight.w400,color: Color(0xFF101453),fontSize: 16,fontFamily: "Inter");
 static TextStyle black14semiBold = const TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 14,fontFamily: "Inter");

 static TextStyle blueSemiBoldFontStyle(double fontSize){
    return TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF101453),fontSize: fontSize,fontFamily: "Inter");
  }
  static TextStyle whiteSemiBoldFontStyle(double fontSize){
    return TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: fontSize,fontFamily: "Inter");
  }
 static TextStyle blackSemiBoldFontStyle(double fontSize){
    return TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: fontSize,fontFamily: "Inter");
  }
  static TextStyle blackMediumFontStyle(double fontSize){
    return TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: fontSize,fontFamily: "Inter");
  }
  static TextStyle whiteMediumFontStyle(double fontSize){
    return TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: fontSize,fontFamily: "Inter");
  }
  static TextStyle whiteNormalFontStyle(double fontSize){
    return TextStyle(fontWeight: FontWeight.w300,color: Colors.white,fontSize: fontSize,fontFamily: "Inter");
  }

}
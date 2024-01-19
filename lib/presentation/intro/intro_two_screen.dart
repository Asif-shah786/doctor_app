import 'package:doctorapp/config/app_color.dart';
import 'package:doctorapp/config/app_image.dart';
import 'package:doctorapp/widget/app_sizebox_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../config/responsive.dart';


class IntroTwoScreen extends StatelessWidget {
  const IntroTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.iconsColor,
      body: Column(
        children: [
          const SizedBox(height: 100),
          Text("Ihr perfekter Reiseführer",style: TextStyle(color: Colors.white,fontSize: Responsive.isTablet(context) ? width * 0.05 :26,fontWeight: FontWeight.w400),),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width * 0.05,vertical: width * 0.01),
            child: Text("Nutzen Sie unser immer umfassendes Buch als Leitfaden für mehr Erfolg",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,
            fontSize: Responsive.isTablet(context) ? width * 0.03 : 14)),
          ),
          const SizedBox(height: 50),
          Responsive.isTablet(context) ? Image.asset(AppImage.gypsumHead,height: width * 0.5,width: width * 0.5):  Image.asset("asset/images/gypsum_head.png"),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

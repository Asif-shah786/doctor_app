import 'package:doctorapp/presentation/bottom_bar.dart';
import 'package:doctorapp/presentation/intro/intro_one_screen.dart';
import 'package:doctorapp/presentation/intro/intro_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/app_font_style.dart';
import '../../widget/app_sizebox_widget.dart';

class IntroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String text =
        'Handbuch für Assistenzärzt*innen und Oberärzt*innen der Chirurgie';

    return Scaffold(
      backgroundColor: const Color(0xFF101453),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: height * 0.2,
            ),
            Image.asset(
              "asset/images/medicalhistorypills.png",
              height: 230,
              width: 230,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      height: 1.2,
                      fontSize: 30,
                      fontFamily: "Inter"),
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  context.pushReplacement("/${BottomBar.routeName}");

                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Text('Get Started', style : AppFontStyle.blueSemiBoldFontStyle(30))),
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.02),
              child:  Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Verfasser",style: AppFontStyle.whiteMediumFontStyle(16),),
                      Text("Dr. med. Stephane Ngongalah",style:AppFontStyle.whiteMediumFontStyle(16) ,),
                      Text("Zürich, Oktober 2023",style:AppFontStyle.whiteMediumFontStyle(16) ,),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

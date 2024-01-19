import 'package:doctorapp/config/app_font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../config/responsive.dart';
import '../../widget/app_sizebox_widget.dart';

class IntroOneScreen extends StatelessWidget {
  const IntroOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String text =
        'Handbuch für Assistenzärzt*innen und Oberärzt*innen der Chirurgie';

    return Scaffold(
      backgroundColor: const Color(0xFF101453),
      body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/images/medicalhistorypills.png",
                  height: width * 0.5,
                  width: width * 0.5,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          text,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              height: 1.2,
                              fontSize: width * 0.08,
                              fontFamily: "Inter"),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: SizedBox(height: 10,)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05,vertical: height * 0.02),
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
    );
  }
}

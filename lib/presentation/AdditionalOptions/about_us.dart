import 'package:doctorapp/config/app_config.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  static const rootName = "about_us";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppConfig.commonAppBar(context, "Über uns",false),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("asset/images/unsere.png", scale: 2),
                  const Text(
                    "Unsere Vision",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mission",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  Image.asset("asset/images/mission.png", scale: 2),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

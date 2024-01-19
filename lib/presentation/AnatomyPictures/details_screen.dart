import 'package:doctorapp/config/app_config.dart';
import 'package:doctorapp/config/app_font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widget/app_sizebox_widget.dart';

class AnatomyDetailsScreen extends StatelessWidget {
  Map<String,dynamic> data;
  AnatomyDetailsScreen({required this.data});

  static const rootName = "anatomyScreen";

  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppConfig.commonAppBar(context, "Anatomie bilder",true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02,),
              Text(data['name'],style: AppFontStyle.blueSemiBoldFontStyle(14),),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data['images'].length,
                itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(data['images'][index]),
                    Divider(),
                  ],
                );
              },),



            ],
          ),
        ),
      ),
    );
  }
}

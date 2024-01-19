import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/app_config.dart';
import '../../config/const_file.dart';
import '../../widget/app_sizebox_widget.dart';
import 'about_us.dart';
import 'contact_us.dart';

class AdditionalOptionListScreen extends StatelessWidget {
  const AdditionalOptionListScreen({super.key});

  static const rootName = "additional";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppConfig.commonAppBar(context, "Zusatzoptionen",true),
      body: Padding(
        padding:  EdgeInsets.only(top: height * 0.03),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: CommonList.additionalOptList.length,
          itemBuilder: (context, index) {
            return AppConfig.buildChapterContainer(context, width, (){
               index == 0?  context.push("/${ContactUs.rootName}") : context.push("/${AboutUs.rootName}");

            },"${index+1}. ${CommonList.additionalOptList[index]}");
          },),
      ),
    );
  }
}

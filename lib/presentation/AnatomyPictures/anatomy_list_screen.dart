import 'package:doctorapp/config/app_config.dart';
import 'package:doctorapp/config/const_file.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widget/app_sizebox_widget.dart';
import 'details_screen.dart';

class AnatomyListScreen extends StatelessWidget {
  const AnatomyListScreen({super.key});

   static const rootName = "anatomyList";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppConfig.commonAppBar(context, "Anatomie bilder",true),
      body: Padding(
        padding:  EdgeInsets.only(top: height * 0.03),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: CommonList.anatomyData.length,
          itemBuilder: (context, index) {
            return AppConfig.buildChapterContainer(context, width, (){
              context.push("/${AnatomyDetailsScreen.rootName}",extra: {"data":CommonList.anatomyData[index]});

            },"${CommonList.anatomyData[index]['name']}");
          },),
      ),
    );
  }
}

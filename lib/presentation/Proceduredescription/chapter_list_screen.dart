import 'package:doctorapp/config/app_config.dart';
import 'package:doctorapp/presentation/Proceduredescription/sub_chapter_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/const_file.dart';
import '../../widget/app_sizebox_widget.dart';

class ChapterListScreen extends StatelessWidget {
  const ChapterListScreen({super.key});

  static const rootName = "ChapterListScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppConfig.commonAppBar(context, "Verfahren Beschreibung",true),
      body: Padding(
        padding:  EdgeInsets.only(top: height * 0.03),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: CommonList.chapterList.length,
          itemBuilder: (context, index) {
            return AppConfig.buildChapterContainer(context, width, (){
              context.push("/${SubChapterListScreen.rootName}",extra: {"subList":CommonList.subchapterList[index],
                "subName":CommonList.chapterList[index]} as Map<String,dynamic>);
            },"${index+1}. ${CommonList.chapterList[index]}");
        },),
      ),
    );
  }
}

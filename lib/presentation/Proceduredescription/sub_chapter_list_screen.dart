import 'package:doctorapp/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/const_file.dart';
import '../../widget/app_sizebox_widget.dart';
import 'details_screen.dart';

class SubChapterListScreen extends StatelessWidget {
  List<String> subList;
  String subName;
  SubChapterListScreen({required this.subList,required this.subName});


  static const rootName = "subChapter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppConfig.commonAppBar(context, subName,true),
      body: Padding(
        padding:  EdgeInsets.only(top: height * 0.03),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: subList.length,
          itemBuilder: (context, index) {
            return AppConfig.buildChapterContainer(context, width, (){
              int idx = CommonList.procedureData[subName]!.indexWhere((element) => element['name'].toString().trim() == subList[index].trim());
              context.push("/${DetailsScreen.rootName}",extra: {"appBarTitle":subName,
                "data":CommonList.procedureData[subName]![idx]});
            },subList[index]);
          },),
      ),
    );
  }
}

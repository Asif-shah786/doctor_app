import 'package:doctorapp/config/app_color.dart';
import 'package:doctorapp/config/app_image.dart';
import 'package:doctorapp/presentation/search/search_controller.dart';
import 'package:doctorapp/widget/app_sizebox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../config/app_config.dart';
import '../../config/const_file.dart';
import '../AdditionalOptions/about_us.dart';
import '../AdditionalOptions/contact_us.dart';
import '../AnatomyPictures/details_screen.dart';
import '../Proceduredescription/details_screen.dart';
import '../Proceduredescription/sub_chapter_list_screen.dart';

class SearchScreen extends StatelessWidget {
  bool isBack;

  SearchScreen({super.key,required this.isBack});

  static const rootName = "search_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: isBack == true ? GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back)) : const SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Consumer<SearchProvider>(
          builder: (context, controller, child) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width/25),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: height/15,
                        decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.blackColor.withOpacity(0.2),
                                blurRadius: 5,
                              ),
                            ]
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: width/30),
                                child: TextFormField(
                                  controller: controller.searchController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Geben Sie hier Ihren Suchbegriff ein",
                                      hintStyle: TextStyle(fontSize: height/55)
                                  ),
                                  onChanged: (value) {
                                    if(value != null && value.isNotEmpty){
                                      controller.searchChapter(value);
                                    }
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width/20),
                              child: SvgPicture.asset(AppImage.searchIcon,color: AppColor.disableSearchColor,height: height/30),
                            )
                          ],
                        ),
                      ),
                    ),
                    gapW(30),
                    Container(
                      height: height/15,
                      width: width/8,
                      decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.blackColor.withOpacity(0.2),
                              blurRadius: 5,
                            ),
                          ]
                      ),
                      child: Center(child: SvgPicture.asset(AppImage.micIcon,color: AppColor.disableSearchColor,height: height/35)),
                    ),
                  ],
                ),
              ),
              gapH(22),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.searchList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return AppConfig.buildChapterContainer(context, width, (){

                    if(controller.searchList[index]['type'] == "vb"){
                      context.push("/${SubChapterListScreen.rootName}",extra: {"subList":CommonList.subchapterList[int.parse(controller.searchList[index]['main_name'])],
                        "subName":controller.searchList[index]['name']} as Map<String,dynamic>);

                    }
                    else if(controller.searchList[index]['type'] == "vb_in"){
                      //vb_inner
                      context.push("/${DetailsScreen.rootName}",extra: {"appBarTitle":controller.searchList[index]['main_name'],
                        "data":CommonList.procedureData[controller.searchList[index]['main_name']]![controller.searchList[index]['index']]});
                    }
                    else if(controller.searchList[index]['type'] == "zo"){
                      //zo

                      controller.searchList[index]['main_name'] == 0?   context.push("/${ContactUs.rootName}") : context.push("/${AboutUs.rootName}");

                    }else {
                      //ab
                      context.push("/${AnatomyDetailsScreen.rootName}",extra: {"data":CommonList.anatomyData[controller.searchList[index]['main_name']]});

                    }

                },controller.searchList[index]['name']);
              },)
            ],
          );
        },),
      ),
    );
  }
}

import 'package:doctorapp/config/app_color.dart';
import 'package:doctorapp/config/app_font_style.dart';
import 'package:doctorapp/config/app_image.dart';
import 'package:doctorapp/config/const_file.dart';
import 'package:doctorapp/config/responsive.dart';
import 'package:doctorapp/presentation/AnatomyPictures/anatomy_list_screen.dart';
import 'package:doctorapp/presentation/search/search_controller.dart';
import 'package:doctorapp/presentation/search/search_screen.dart';
import 'package:doctorapp/widget/app_sizebox_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../Additionaloptions/addtional_option_list_screen.dart';
import '../Proceduredescription/chapter_list_screen.dart';

class HomeScreen extends StatelessWidget {


  TextEditingController searchC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width/15),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH(15),
              Center(child: Image.asset(AppImage.medicalHistoryPills, height: height / 5.5)),
              Center(child: Text("Medizinisches Handbuch",textAlign: TextAlign.center,style: AppFontStyle.blueSemiBoldFontStyle(height / 27),)),
              gapH(15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width/12),
                child: TextFormField(
                  controller: searchC,
                  decoration: InputDecoration(
                    hintText: "Suchen",
                    hintStyle: TextStyle(color: AppColor.iconsColor),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        context.read<SearchProvider>().searchChapter(searchC.text);
                        context.push("/${SearchScreen.rootName}",extra: {'isBack':true});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(AppImage.searchIcon,color: AppColor.iconsColor),
                      ),
                    ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: AppColor.iconsColor),
                      ),
                    focusedBorder:  UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: AppColor.iconsColor),
                    ),
                  ),
                ),
              ),
              gapH(20),
              Text("Entdecken",style:  AppFontStyle.blackMediumFontStyle(height / 30),),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: CommonList.entdeckenList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).orientation ==
                      Orientation.landscape ? 3: 2,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 10,
                  childAspectRatio: Responsive.isMobile(context) ? 0.55: 1 ,
                ),
                itemBuilder: (context,index,) {
                  return GestureDetector(
                    onTap: () {
                      if(index == 0){
                      context.push("/${AnatomyListScreen.rootName}");
                      }else if (index == 1){
                        context.push("/${ChapterListScreen.rootName}");
                      }else if (index == 2){
                        context.push("/${AdditionalOptionListScreen.rootName}");

                      }else{

                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          height: height/4.5,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(image: AssetImage(CommonList.entdeckenList[index].image ?? ""),fit: BoxFit.fill)
                          ),
                        ),
                        gapH(60),
                        Text(CommonList.entdeckenList[index].title ?? "",style: AppFontStyle.blackSemiBoldFontStyle(height/45),
                            textAlign: TextAlign.center,),
                        gapH(60),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
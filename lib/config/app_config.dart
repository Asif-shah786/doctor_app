import 'package:doctorapp/config/responsive.dart';
import 'package:flutter/material.dart';

import '../widget/app_sizebox_widget.dart';
import 'app_color.dart';

class AppConfig{

  /// App bar
   static commonAppBar(BuildContext context,String text,bool showAction){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      foregroundColor: Colors.black,
      centerTitle: true,
      shadowColor: Colors.grey,
      surfaceTintColor: Colors.white,
      // actions: !showAction ? null: [
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(
      //       height: 40,
      //       width: 40,
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         border: Border.all(color: Colors.grey),
      //         borderRadius: BorderRadius.circular(8),
      //         boxShadow: [
      //           BoxShadow(
      //               color: Colors.grey.withOpacity(0.8),
      //             blurRadius: 5,
      //           )
      //         ]
      //
      //       ),
      //       child: Icon(Icons.search,color: Colors.grey,),
      //     ),
      //   ),
      // ],
      title: Text(text,style: TextStyle(fontSize: Responsive.isTablet(context) ? width * 0.04 : 16,fontWeight: FontWeight.w600 ,color: AppColor.iconsColor),),
    );
  }

  static buildChapterContainer(BuildContext context,double width,Function() onPress,String chapterName){
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width * 0.04,vertical: width * 0.02),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.grey),
              borderRadius: BorderRadius.circular(14)
          ),
          child: Padding(
            padding:  EdgeInsets.all(width * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Text("${index+1}. ${chapterList[index]}",style: TextStyle(color: Color(0xFF101453),fontSize: Responsive.isTablet(context) ? width * 0.03 : 14,fontWeight: FontWeight.w400),),
                SizedBox(
                  width: width * 0.7,
                  child: Text(chapterName,style: TextStyle(color: Color(0xFF101453),fontSize: Responsive.isTablet(context) ? width * 0.03 : 14,fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis),
                ),
                Icon(Icons.arrow_forward,size: Responsive.isTablet(context) ? width * 0.04 : 22,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
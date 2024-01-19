import 'package:doctorapp/config/app_config.dart';
import 'package:doctorapp/config/app_font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../config/responsive.dart';
import '../../../widget/app_sizebox_widget.dart';

class DetailsScreen extends StatelessWidget {
  String appBarTitle;
  Map<String,dynamic> data;
  DetailsScreen({required this.appBarTitle,required this.data});

  static const rootName = "detailsScreen";

  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppConfig.commonAppBar(context, appBarTitle,true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.02,),

            Center(child: Text(data['name'],style: AppFontStyle.blueSemiBoldFontStyle(width* 0.035),textAlign: TextAlign.center,)),

            Padding(
              padding:  EdgeInsets.only(left: (width / 9),right: width/9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: data['list'].length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height * 0.02,),
                        Text("""${data['list'][index]}""",style: Responsive.isTablet(context) ?  AppFontStyle.blackSemiBoldFontStyle(width * 0.03) : AppFontStyle.blackMediumFontStyle(14),),
                      ],
                    );
                  },),

                  SizedBox(height: height * 0.02,),

                  data['table'] ?  Padding(
                    padding:  EdgeInsets.only(right: (width / 16)),
                    child: Table(
                      defaultColumnWidth: FixedColumnWidth(width / 4),

                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2),
                      children:
                      [
                          TableRow( children: [
                            Column(children:[Text('Wichtige Strukturen', style: TextStyle(fontSize: Responsive.isTablet(context) ? width * 0.03 :  12.0,fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Kritische Passagen', style: TextStyle(fontSize:Responsive.isTablet(context) ? width * 0.03 :  12.0,fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Tipps & Tricks', style: TextStyle(fontSize:Responsive.isTablet(context) ? width * 0.03 :  12.0,fontWeight: FontWeight.bold))]),
                          ]),
                        for(Map<String,dynamic> item in data['tabledata']) TableRow( children: [
                  Column(children:[Padding(
                      padding: const EdgeInsets.all(8.0),
              child: Text(item['r1'],style: TextStyle(fontSize: Responsive.isTablet(context) ? width * 0.03 : 12.0,fontWeight: FontWeight.w400)),
                            )]),
                          Column(children:[Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item['r2'],style: TextStyle(fontSize: Responsive.isTablet(context) ? width * 0.03 :12.0,fontWeight: FontWeight.w400)),
                          )]),
                          Column(children:[Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item['r3'],style: TextStyle(fontSize:Responsive.isTablet(context) ? width * 0.03 : 12.0,fontWeight: FontWeight.w400)),
                          )]),
                        ])
                      ]
                    ),
                  ) : const SizedBox(),
                  SizedBox(height: height * 0.02,),
                ],
              ),
            ),
           data['tablenext'] ? Padding(
             padding:  EdgeInsets.only(left: (width / 9),right: width/9),
             child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: data['tablenextdata'].length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.02,),
                      Text("""${data['tablenextdata'][index]}""",style: Responsive.isTablet(context) ?  AppFontStyle.blackSemiBoldFontStyle(width * 0.03) : AppFontStyle.black14semiBold,),
                    ],
                  );
                },),
           ) : Container(),

          ],
        ),
      ),
    );
  }
}

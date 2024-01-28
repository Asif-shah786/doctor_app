import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
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
      appBar: AppConfig.commonAppBar(context, "Zusatzoptionen", true),
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.03),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: CommonList.additionalOptList.length,
          itemBuilder: (context, index) {
            return AppConfig.buildChapterContainer(context, width, () async {
              if (index == 0) {
                context.push("/${ContactUs.rootName}");
              } else if (index == 1) {
                context.push("/${AboutUs.rootName}");
              } else if (index == 2) {
                await openLinkHelper(urlName: urlNameAddressMap['legal']);
              } else if (index == 3) {
                await openLinkHelper(urlName: urlNameAddressMap['datenschutz']);
              }
            }, "${index + 1}. ${CommonList.additionalOptList[index]}");
          },
        ),
      ),
    );
  }
}


Future<void> openLinkHelper({required String urlName}) async {
  try {
    Uri url = Uri.parse(urlName);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print(
        'Error in launching url: {$urlName}',
      );
    }
  } catch (e) {
    // Handle the exception
    print('Error: $e');
    // You can show an error message or perform other error handling actions here
  }
}

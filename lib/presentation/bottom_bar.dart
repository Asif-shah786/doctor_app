import 'package:doctorapp/config/app_color.dart';
import 'package:doctorapp/config/app_image.dart';
import 'package:doctorapp/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
  static const routeName = "BottomBar";
  @override
  Widget build(BuildContext context) {
    final bottomBarProvider = Provider.of<BottomBarController>(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: height/10,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 40,
          currentIndex: bottomBarProvider.currentIndex,
          backgroundColor: colorScheme.surface,
          selectedItemColor: AppColor.iconsColor,
          unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
          selectedLabelStyle: textTheme.caption,
          unselectedLabelStyle: textTheme.caption,
          onTap: (value) {
             bottomBarProvider.changeCurrentIndexValue(context,value);
          },
          items:  [
            BottomNavigationBarItem(
              label: 'Home',
              icon: SvgPicture.asset(AppImage.homeIcon,color: bottomBarProvider.currentIndex == 0? AppColor.iconsColor:Colors.black),
            ),
            BottomNavigationBarItem(
              label: 'Procedure',
              icon: SvgPicture.asset(AppImage.procedureIcon,color: bottomBarProvider.currentIndex == 1?AppColor.iconsColor:Colors.black),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: SvgPicture.asset(AppImage.searchIcon,color: bottomBarProvider.currentIndex == 2?AppColor.iconsColor:Colors.black),
            ),
          ],
        ),
      ),
      body: Center(
        child: bottomBarProvider.bottomWidgetScreen.elementAt(bottomBarProvider.currentIndex),
      ),
    );
  }
}
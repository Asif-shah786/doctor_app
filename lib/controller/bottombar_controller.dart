
import 'package:doctorapp/presentation/Proceduredescription/chapter_list_screen.dart';
import 'package:doctorapp/presentation/home/home_screen.dart';
import 'package:doctorapp/presentation/search/search_controller.dart';
import 'package:doctorapp/presentation/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBarController with ChangeNotifier {

  int currentIndex = 0;

    void changeCurrentIndexValue(BuildContext context,value){
    currentIndex = value;
    if(currentIndex == 2){
      Provider.of<SearchProvider>(context,listen: false).clearSearchValue();
    }
    notifyListeners();
  }

  List<Widget> bottomWidgetScreen = <Widget>[
     HomeScreen(),
    ChapterListScreen(),
    SearchScreen(isBack: false),
  ];

}
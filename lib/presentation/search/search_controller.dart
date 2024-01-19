import 'package:doctorapp/config/const_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class SearchProvider with ChangeNotifier{

  TextEditingController _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;

  List<Map<String,dynamic>> _searchList = [];
  List<Map<String,dynamic>> get searchList => _searchList;


  searchChapter(String val){

    if(val.isNotEmpty){
      _searchController.text = val;
      _searchList = [];
        for(var item in CommonList.allData){
            if(item['name']!.toString().toUpperCase().contains(val) || item['name']!.toString().toLowerCase().contains(val) ){
              _searchList.add(item);
            }
        }
        notifyListeners();
    }

  }

  clearSearchValue(){
    _searchController.clear();
    _searchList.clear();
    notifyListeners();
  }
}
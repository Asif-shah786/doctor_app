import 'package:flutter/cupertino.dart';

var height;
var width;

Widget gapH(h) {
  return SizedBox(
    height: height / h,
  );
}

Widget gapW(w) {
  return SizedBox(
    width: width / w,
  );
}

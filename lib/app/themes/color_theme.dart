import 'package:flutter/material.dart';

var backgroundColor = const Color(0xFFE7F6F2);
var whiteColor = const Color(0xFFFAFAFA);
var greenColor1 = const Color(0xFFA5C9CA);
var greenColor2 = const Color(0xFF508B7D);
var greenColor3 = const Color(0xFF90D0C2);
var greenColor4 = const Color.fromARGB(64, 144, 208, 194);
var greenColor5 = const Color(0xFFC7D090);
var greenColor6 = const Color(0xFF74B9A8);
var blueColor = const Color(0xFF90C1D0);
var purpleColor = const Color(0xFFCB90D0);
var orangeColor = const Color(0xFFD0A390);
var slate300 = const Color(0xFFCBD5E1);
var slate500 = const Color(0xFF64748B);

BoxShadow dropShadow() {
  return BoxShadow(
    color: whiteColor.withOpacity(0.1),
    spreadRadius: 0,
    blurRadius: 20,
    offset: const Offset(0, 5), // changes position of shadow
  );
}

BoxDecoration shadowDecoration() {
  return BoxDecoration(
    boxShadow: [dropShadow()],
  );
}

import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle contactListNameStyle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle contactListPhoneStyle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle headerField = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.5),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle valueField = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  static Decoration shadowDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color(0xFFFFFFFF),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.10),
        spreadRadius: 3,
        blurRadius: 7,
        offset: Offset(0, 2),
      ),
    ],
  );
}

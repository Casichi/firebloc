import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primary = Color(0xffF49D37);
Color rojo = Color(0xffF22B29);
Color azulmarino = Color(0xff140F2D);
Color rosa = Color(0xffEA638C);
Color verde = Color(0xff7DCD85);
Color celeste = Color(0xff208AAE);

ThemeData miTema (BuildContext con) {
  return ThemeData(
  primaryColor: primary,
colorScheme: ColorScheme.fromSwatch(
  primarySwatch: Colors.yellow,
).copyWith(
  secondary: Colors.amber,
),
  );
}
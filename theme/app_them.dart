
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

@immutable
class AppThem{
  static const colors = AppColor();

  const AppThem._();

  static ThemeData define(){
    return ThemeData(
      primaryColor: Color(0xffbc2c),
    );
  }
}
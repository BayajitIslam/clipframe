import 'package:clipframe/view/widget/language_switch/language_switch.dart';
import 'package:flutter/material.dart';

AppBar appBarLogin() {
  return AppBar(
    backgroundColor: Colors.transparent,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: LanguageSwitch(),
      )
      ]);

}

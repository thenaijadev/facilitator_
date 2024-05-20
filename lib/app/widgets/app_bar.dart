import 'package:flutter/material.dart';

AppBar appBar({required Widget label}) {
  return AppBar(
      centerTitle: false,
      shape: const Border(bottom: BorderSide(width: 0.5)),
      title: label);
}

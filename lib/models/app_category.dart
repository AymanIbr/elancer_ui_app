import 'package:flutter/material.dart';


class AppCategory{
  final String title;
  bool checked ;

  AppCategory({
   required this.title,
    this.checked = false
  });
}
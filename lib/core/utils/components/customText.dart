// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/core/utils/theme/color_manager.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  final String text;
  Color? color;
  TextStyle? style;
  CustomText({
    Key? key,
    required this.text,
    this.color = ColorManager.primary,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

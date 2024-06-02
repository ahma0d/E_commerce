import 'package:e_commerce/core/utils/theme/color_manager.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class CustomAppBar extends StatelessWidget {
  final String title;
  Widget? leading;
  List<Widget> actions = [];

  CustomAppBar({super.key, required this.title , this.leading , this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: leading,
      actions: actions,
      backgroundColor: ColorManager.primary,
      elevation: 0.0,
      centerTitle: true,
    );
  }
}

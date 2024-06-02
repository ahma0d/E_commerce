// ignore: file_names
import 'package:flutter/material.dart';

import '../theme/styles_manager.dart';

class CustomAppTextButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final TextStyle? style;
  const CustomAppTextButton({
    Key? key,
    required this.text,
    this.style,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: style ?? getRegularStyle(color: Colors.black),
      ),
    );
  }
}

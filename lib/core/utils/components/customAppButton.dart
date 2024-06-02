import 'package:e_commerce/core/utils/theme/value_manager.dart';
import 'package:flutter/material.dart';

import '../theme/color_manager.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  AppButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.bgColor,
    this.textColor,
  }) : super(key: key) {
    isOutlined = false;
  }

  AppButton.outlined({
    super.key,
    required this.title,
    this.onPressed,
    this.bgColor,
    this.textColor,
  }) {
    isOutlined = true;
  }

  final String title;
  final Color? textColor;
  final Color? bgColor;
  final void Function()? onPressed;
  bool isOutlined = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(AppSize.s1),
          backgroundColor: MaterialStateProperty.all(
            isOutlined ? ColorManager.white : bgColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s8),
              side: BorderSide(
                color: bgColor ?? ColorManager.primary,
              ),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
          child: Text(
            title,
            // style: textTheme.labelLarge!.copyWith(
            //   color: isOutlined
            //       ? textColor ?? AppColors.primary
            //       : textColor ?? AppColors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:e_commerce/core/utils/theme/styles_manager.dart';
import 'package:e_commerce/core/utils/theme/value_manager.dart';
import 'package:flutter/material.dart';

import '../theme/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.hint,
    this.suffixIcon,
    this.initialValue,
    this.type = TextInputType.text,
  });

  final TextEditingController? controller;
  final String? initialValue;
  final String? hint;
  final Widget? suffixIcon;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: AppSize.s1, color: Color(0xFFECECEC)),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
      ),
      child: TextFormField(
        keyboardType: type,
        textAlignVertical:
            TextAlignVertical.center, // هذا السطر يوسط النص عمودياً
        controller: controller,
        initialValue: initialValue,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.lightest,
            ),
            borderRadius: BorderRadius.circular(
              AppSize.s8,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.lightest,
            ),
            borderRadius: BorderRadius.circular(
              AppSize.s8,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.primary,
            ),
            borderRadius: BorderRadius.circular(
              AppSize.s8,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorManager.error,
            ),
            borderRadius: BorderRadius.circular(
              AppSize.s8,
            ),
          ),
          hintText: hint,
          hintStyle:
              getMediumStyle(color: ColorManager.lightGrey, fontSize: 15),
          border: InputBorder.none,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}

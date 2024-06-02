import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../theme/color_manager.dart';

class AppNotifications {
  static showSuccess({
    required String message,
    Color color = Colors.green,
  }) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 18.0);
  }

  static showError({
    required String message,
    Color color = Colors.red,
  }) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 18.0);
  }

  static showMessage({
    required String message,
  }) {
    BotToast.showCustomText(
      toastBuilder: (context) => Container(
        padding: const EdgeInsets.all(10),
        color: ColorManager.primary,
        child: Text(message),
      ),
      onlyOne: true,
    );
  }
}

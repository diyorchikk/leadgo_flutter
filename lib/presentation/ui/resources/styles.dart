import 'package:flutter/cupertino.dart';
import 'app_colors.dart';

abstract class Styles {
  Styles._();

  static TextStyle getTitleStyle() => const TextStyle(
        fontSize: 15,
        color: AppColors.white,
        fontWeight: FontWeight.w500,
      );
}

import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class WTextField extends StatefulWidget {
  const WTextField({
    Key? key,
    required this.name,
    required this.controller,
  }) : super(key: key);
  final String name;
  final TextEditingController controller;

  @override
  State<WTextField> createState() => _WTextFieldState();
}

class _WTextFieldState extends State<WTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      cursorWidth: 200,
      controller: widget.controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.searchBoxColor,
        border: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColors.searchBoxColor, width: 0),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColors.searchBoxColor, width: 0),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: AppColors.searchBoxColor, width: 0),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: widget.name,
      ),
    );
  }
}

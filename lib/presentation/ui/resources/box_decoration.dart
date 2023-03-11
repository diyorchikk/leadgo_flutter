import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class BDecoration {
  BDecoration._();

  static BoxDecoration getCardFonDecoration() => const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(-5, -5),
            blurRadius: 20,
            color: Colors.black26,
          ),
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 20,
            color: Colors.black26,
          ),
        ],
        image: DecorationImage(
          image: AssetImage("asset/images/png/card_fon.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color(0xFFF7F8F9),
      );

  static BoxDecoration getCardDecoration() => const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(-5, -5),
            blurRadius: 20,
            color: Colors.black26,
          ),
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 20,
            color: Colors.black26,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Color(0xFFFFFFFF),
      );

  static BoxDecoration getBorderContainerDecoration() => BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          width: 1,
          color: Colors.black38,
        ),
        color: const Color(0xFFF7F8F9),
      );
}

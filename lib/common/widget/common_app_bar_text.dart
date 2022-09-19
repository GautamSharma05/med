import 'package:flutter/material.dart';
import 'package:med/constant/constants.dart';

class CommonAppBarText extends StatelessWidget {
  final String text;
  const CommonAppBarText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColor.textBlackColor,
        fontSize: 16,
        fontWeight: FontWeight.w400),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:med/constant/constants.dart';

class CommonText extends StatelessWidget {
  final String text;
  const CommonText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color:AppColor.textBlackColor,fontSize: 14, fontWeight: FontWeight.w400),
    );
  }
}

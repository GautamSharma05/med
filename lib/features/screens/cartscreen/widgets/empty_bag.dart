import 'package:flutter/material.dart';
import 'package:med/constant/constants.dart';

class EmptyBag extends StatelessWidget {
  const EmptyBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      color: AppColor.textColor,
    );
  }
}
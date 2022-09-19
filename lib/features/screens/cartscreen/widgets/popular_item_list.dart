import 'package:flutter/material.dart';
import 'package:med/constant/constants.dart';

class PopularItemList extends StatelessWidget {
  const PopularItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.40,
      color: AppColor.textColor,
    );
  }
}

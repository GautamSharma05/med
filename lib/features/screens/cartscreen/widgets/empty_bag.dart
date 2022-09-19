import 'package:flutter/material.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constant/constants.dart';

class EmptyBag extends StatelessWidget {
  const EmptyBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      color: AppColor.textColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/bag.png',
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            AppText.nothingInBag,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

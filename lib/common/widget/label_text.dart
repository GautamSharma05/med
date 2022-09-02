import 'package:flutter/material.dart';

import 'package:med/constant/colors.dart';

class CommonLabel extends StatelessWidget {
  final String? labelText;
  const CommonLabel({
    Key? key,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText!,
      style: const TextStyle(
        fontSize: 12,
        color: AppColor.textBlackColor,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
      textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
      softWrap: false,
    );
  }
}

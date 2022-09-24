import 'package:flutter/material.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constants/constants.dart';

class AccountButtons extends StatelessWidget {
  final String text;
  final dynamic icon;
  const AccountButtons({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 46,
      child: OutlinedButton.icon(
        icon: Icon( icon,color: AppColor.themeColor,),
        onPressed: null,
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            const BorderSide(
              color: AppColor.themeColor,
              width: 1.5,
            ),
          ),
        ),
        label: Center(
          child: CommonText(
            text: text,
          ),
        ),
      ),
    );
  }
}

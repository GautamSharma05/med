import 'package:flutter/material.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constants/constants.dart';

 class AccountButtons extends StatelessWidget {
  final String text;
  final dynamic icon;
  final dynamic navigate;
  const AccountButtons({super.key, required this.text, required this.icon,required this.navigate});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  MediaQuery.of(context).size.width * 0.40,
      height: 46,
      child: OutlinedButton.icon(
        icon: Icon( icon,color: AppColor.themeColor,),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> navigate)),
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

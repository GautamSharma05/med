import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constant/constants.dart';

class FeedbackAndInformation extends StatelessWidget {
  const FeedbackAndInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.textColor,
      width: double.infinity,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: Text(
              AppText.feedbackAndInformation,
              style: TextStyle(
                  color: AppColor.textBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: Icon(color: AppColor.themeColor, LineIcons.copy),
            title: CommonText(
              text: AppText.termPoliciesAndLicenses,
            ),
            trailing: Icon(LineIcons.angleRight),
          ),
          ListTile(
            leading: Icon(color: AppColor.themeColor, LineIcons.questionCircle),
            title: CommonText(
              text: AppText.browseFaqs,
            ),
            trailing: Icon(LineIcons.angleRight),
          ),
        ],
      ),
    );
  }
}
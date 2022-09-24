import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constants/constants.dart';
import 'package:med/features/screens/accountscreen/pages/browsefaq/browse_faq.dart';
import 'package:med/features/screens/accountscreen/pages/termandpolicy/term_policy.dart';

class FeedbackAndInformation extends StatelessWidget {
  const FeedbackAndInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.textColor,
      width: double.infinity,
      height:  MediaQuery.of(context).size.height * 0.20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: const Text(
              AppText.feedbackAndInformation,
              style: TextStyle(
                  color: AppColor.textBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: const Icon(color: AppColor.themeColor, LineIcons.copy),
            title: const CommonText(
              text: AppText.termPoliciesAndLicenses,
            ),
            trailing: IconButton(
              icon: const Icon(LineIcons.angleRight),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TermAndPolicy()));
              },
            ),
          ),
          ListTile(
            leading: const Icon(
                color: AppColor.themeColor, LineIcons.questionCircle),
            title: const CommonText(
              text: AppText.browseFaqs,
            ),
            trailing: IconButton(
              icon: const Icon(LineIcons.angleRight),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BrowseFaq()));
              },
            ),
          ),
        ],
      ),
    );
  }
}

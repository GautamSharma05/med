import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constants/constants.dart';
import 'package:med/features/screens/accountscreen/pages/questionandanswer/question_answer.dart';
import 'package:med/features/screens/accountscreen/pages/reviews/reviews.dart';


class MyActivity extends StatelessWidget {
  const MyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.textColor,
      width: double.infinity,
      height: 160,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Container(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: const Text(
              AppText.myActivity,
              style: TextStyle(
                  color: AppColor.textBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: const Icon(color: AppColor.themeColor, LineIcons.edit),
            title: const CommonText(
              text: AppText.reviews,
            ),
            trailing: IconButton(
              icon: const Icon(LineIcons.angleRight),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Reviews()));
              },
            ),
          ),
           ListTile(
            leading: const Icon(color: AppColor.themeColor, LineIcons.comments),
            title: const CommonText(
              text: AppText.questionAndAnswer,
            ),
            trailing:  IconButton(
              icon: const Icon(LineIcons.angleRight),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const QuestionAndAnswer()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:med/common/widget/common_app_bar_text.dart';
import 'package:med/constant/constants.dart';
import 'package:med/features/screens/accountscreen/widgets/account_detail.dart';
import 'package:med/features/screens/accountscreen/widgets/account_earn_with.dart';
import 'package:med/features/screens/accountscreen/widgets/account_my_activity.dart';
import 'package:med/features/screens/accountscreen/widgets/account_settings.dart';
import 'package:med/features/screens/accountscreen/widgets/feedback.dart';
import 'package:med/features/screens/accountscreen/widgets/log_out_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const CommonAppBarText(text: AppText.accountAppBarText),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: AppColor.textColor,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(children: const [
            AccountDetail(),
            SizedBox(
              height: 10,
            ),
            AccountSettings(),
            SizedBox(
              height: 10,
            ),
            MyActivity(),
            SizedBox(
              height: 10,
            ),
            EarnWithUdiiBaba(),
            SizedBox(
              height: 10,
            ),
            FeedbackAndInformation(),
            SizedBox(
              height: 10,
            ),
            LogOutButton(),
          ])),
        ));
  }
}

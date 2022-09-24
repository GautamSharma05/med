import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:med/common/widget/pages_app_bar.dart';
import 'package:med/constants/constants.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SafeArea(
        child: PageAppBar(
          title:AppText.helpCenter,
        ),
      ),
    );
  }
}

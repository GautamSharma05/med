import 'package:flutter/material.dart';
import 'package:med/common/widget/pages_app_bar.dart';
import 'package:med/constant/constants.dart';


class ReferAndEarn extends StatelessWidget {
  const ReferAndEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PageAppBar(
          title: AppText.referAndEarn,
        ),
      ),
    );
    
  }
}
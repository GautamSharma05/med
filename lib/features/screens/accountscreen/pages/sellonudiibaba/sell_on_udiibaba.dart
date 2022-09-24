import 'package:flutter/material.dart';
import 'package:med/common/widget/pages_app_bar.dart';
import 'package:med/constants/constants.dart';

class SellOnUdiiBaba extends StatelessWidget {
  const SellOnUdiiBaba({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PageAppBar(title: AppText.sellOnUdiibaba),
      ),
    );
    
  }
}
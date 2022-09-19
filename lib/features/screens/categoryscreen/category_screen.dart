import 'package:flutter/material.dart';
import 'package:med/common/widget/common_app_bar.dart';
import 'package:med/constant/constants.dart';


class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  CommonAppbar(
        title: AppText.categoryAppBarText,
      ),
      body: Center(
        child: Text('Category Screen'),
      ),
    
    );
  }
}
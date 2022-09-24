import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/common/widget/common_app_bar_text.dart';
import 'package:med/constants/constants.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.textColor,
        elevation: 0.5,
        title: const CommonAppBarText(text: AppText.categoryAppBarText),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                LineIcons.heart,
                color: AppColor.textBlackColor,
              ))
        ],
      ),
      body: const Center(
        child: Text('Category Screen'),
      ),
    );
  }
}

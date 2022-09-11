import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med/common/widget/app_bar.dart';
import 'package:med/common/widget/bottom_navigation.dart';
import 'package:med/features/screens/accountscreen/account_screen.dart';
import 'package:med/features/screens/homescreen/home_screen.dart';

class ScreenControl extends ConsumerStatefulWidget {
  const ScreenControl({
    super.key,
  });
  @override
  ScreenControlState createState() => ScreenControlState();
}

class ScreenControlState extends ConsumerState<ScreenControl> {
  PageController pageController = PageController();
  int index = 0;
  List screen = const [
    HomeScreen(),
    HomeScreen(),
    AccountScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppbar(),
        body: PageView.builder(
            itemCount: 4,
            controller: pageController,
            onPageChanged: (page) {
              setState(() {
                index = page;
              });
            },
            itemBuilder: (context, position) {
              return screen[position];
            }),
        bottomNavigationBar:
            CustomBottomBar(controller: pageController, index: index),
      ),
    );
  }
}

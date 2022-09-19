import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/constant/constants.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  final PageController controller;
  int index;
  CustomBottomBar({super.key, required this.controller, required this.index});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.themeColor,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
        child: GNav(
          backgroundColor: AppColor.themeColor,
          tabBackgroundColor: Colors.grey.shade100.withOpacity(0.5),
          color: AppColor.textColor,
          activeColor: AppColor.textColor,
          gap: 8,
          padding: const EdgeInsets.all(16.0),
          tabs: const [
            GButton(icon: LineIcons.home, text: 'Home'),
            GButton(icon: LineIcons.thLarge, text: 'Categories'),
            GButton(icon: LineIcons.user, text: 'Account'),
            GButton(icon: LineIcons.shoppingBag, text: 'Shopping Bag'),
          ],
          selectedIndex: widget.index,
          onTabChange: (index) {
            setState(() {
              widget.index = index;
            });
            widget.controller.jumpToPage(index);
          },
        ),
      ),
    );
  }
}

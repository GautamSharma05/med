import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/constant/constants.dart';
import 'package:med/features/screens/accountscreen/widgets/button_widgets.dart';

class AccountDetail extends StatelessWidget {
  const AccountDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.textColor,
      width: double.infinity,
      height: 190,
      child: Column(
        children: [
          const ListTile(
            title: Text(
              AppText.userName,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              AccountButtons(text: AppText.orders, icon: LineIcons.shoppingBag),
              AccountButtons(text: AppText.wishlist, icon: LineIcons.heart),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              AccountButtons(text: AppText.coupons, icon: LineIcons.gift),
              AccountButtons(
                  text: AppText.helpCenter, icon: LineIcons.headphones),
            ],
          ),
        ],
      ),
    );
  }
}

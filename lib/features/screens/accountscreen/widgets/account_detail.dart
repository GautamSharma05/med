import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/constants/constants.dart';
import 'package:med/features/screens/accountscreen/pages/coupons/coupouns.dart';
import 'package:med/features/screens/accountscreen/pages/helpcenter/help_center.dart';
import 'package:med/features/screens/accountscreen/pages/orders/orders.dart';
import 'package:med/features/screens/accountscreen/pages/wishlist/wishlist.dart';
import 'package:med/features/screens/accountscreen/widgets/button_widgets.dart';

class AccountDetail extends StatelessWidget {
  const AccountDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.textColor,
      width: double.infinity,
      height:  MediaQuery.of(context).size.height * 0.22,
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
            children:  const [
              AccountButtons(text: AppText.orders, icon: LineIcons.shoppingBag,navigate:  Orders(),),
              AccountButtons(text: AppText.wishlist, icon: LineIcons.heart,navigate: WishList() ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  const [
              AccountButtons(text: AppText.coupons, icon: LineIcons.gift,navigate: Coupons() ),
              AccountButtons(
                  text: AppText.helpCenter, icon: LineIcons.headphones,navigate:HelpCenter()),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/common/widget/common_app_bar_text.dart';
import 'package:med/constants/constants.dart';
import 'package:med/features/screens/accountscreen/pages/wishlist/wishlist.dart';
import 'package:med/features/screens/cartscreen/widgets/empty_bag.dart';
import 'package:med/features/screens/cartscreen/widgets/popular_item_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.textColor,
          elevation: 1,
      title: const CommonAppBarText(text: AppText.cartAppBarText),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const WishList()));
            },
            icon: const Icon(
              LineIcons.heart,
              color: AppColor.textBlackColor,
            ))
      ],
    ),
      body:Column(
        children: const [
          EmptyBag(),
          SizedBox(
              height:10,
          ),
          PopularItemList(),
        ],
      )
    );
  }
}

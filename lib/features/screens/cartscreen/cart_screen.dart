import 'package:flutter/material.dart';
import 'package:med/common/widget/common_app_bar.dart';
import 'package:med/constant/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppbar(
        title: AppText.cartAppBarText,
      ),
      body: Center(
        child: Text('Your Cart is Empty'),
      ),
    );
  }
}

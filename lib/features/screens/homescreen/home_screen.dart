import 'package:flutter/material.dart';
import 'package:med/common/widget/app_bar.dart';
import 'package:med/features/screens/homescreen/widgets/category_widget.dart';

import 'package:med/features/screens/homescreen/widgets/crousel_slider.dart';
import 'package:med/features/screens/homescreen/widgets/home_page_product_card_one.dart';
import 'package:med/features/screens/homescreen/widgets/sponsor_ad.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              CarouselSliders(),

              CategoryWidget(),
              SizedBox(
                height: 10,
              ),
              SponsorBanner(),
              SizedBox(
                height: 10,
              ),
              HomePageProductCardOne()
            ],
          ),
        ));
  }
}

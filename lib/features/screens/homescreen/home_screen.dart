import 'package:flutter/material.dart';
import 'package:med/common/widget/app_bar.dart';
import 'package:med/features/screens/homescreen/widgets/crousel_slider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: const CustomAppbar(),
      body:SingleChildScrollView(
        child: Column(
          children: const [
            CarouselSliders(),
          ],
        ),
      )
    );
  }
}

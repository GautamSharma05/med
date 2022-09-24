import 'package:flutter/material.dart';
import 'package:med/common/widget/reusable_category.dart';
import 'package:med/constants/constants.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.52,
      color: AppColor.textColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              AppText.categoryHeading,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'PoppinsSemiBold',
                  letterSpacing: 0.7),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              ReusableCategory(image: 'assets/images/shirt.png', text: 'Shirt'),
              ReusableCategory(image: 'assets/images/kurta.png', text: 'Kurta'),
              ReusableCategory(image: 'assets/images/mens_pant.png', text: 'Mens Pant'),
              ReusableCategory(image: 'assets/images/tshirt.png', text: 'T-Shirt')
            ],
          ),
          Row(
            children: const [
              ReusableCategory(image: 'assets/images/shirt.png', text: 'Shirt'),
              ReusableCategory(image: 'assets/images/kurta.png', text: 'Kurta'),
              ReusableCategory(image: 'assets/images/mens_pant.png', text: 'Mens Pant'),
              ReusableCategory(image: 'assets/images/tshirt.png', text: 'T-Shirt')
            ],
          ),
          Row(
            children: const [
              ReusableCategory(image: 'assets/images/shirt.png', text: 'Shirt'),
              ReusableCategory(image: 'assets/images/kurta.png', text: 'Kurta'),
              ReusableCategory(image: 'assets/images/mens_pant.png', text: 'Mens Pant'),
              ReusableCategory(image: 'assets/images/tshirt.png', text: 'T-Shirt')
            ],
          ),

        ],
      ),
    );
  }
}

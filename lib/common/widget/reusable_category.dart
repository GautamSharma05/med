import 'package:flutter/material.dart';

class ReusableCategory extends StatelessWidget {
  final String image;
  final String text;
  const ReusableCategory({Key? key,required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: SizedBox(
        width: 90,
        height: 120,
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

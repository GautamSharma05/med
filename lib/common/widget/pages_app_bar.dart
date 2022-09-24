import 'package:flutter/material.dart';
import 'package:med/constants/constants.dart';


class PageAppBar extends StatelessWidget {
  final String title;
  const PageAppBar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: MediaQuery.of(context).size.height / 8,
          color: AppColor.themeColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: IconButton(
                    icon: const Icon(color: AppColor.textColor,Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
               Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Center(
                  child: Text(
                   title,
                   style: const TextStyle(
                      color: AppColor.textColor,
                      fontSize: 18,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500),
                   
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:med/buil_primary_swatch.dart';
import 'package:med/constant/colors.dart';
import 'package:med/screens/loginscreen/loginscreen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MED',
        theme: ThemeData(
          primarySwatch: buildMaterialColor(AppColor.themeColor),
          fontFamily: 'Montserrat',
        ),
        home: const LoginScreen());
  }
}

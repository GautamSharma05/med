import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med/buil_primary_swatch.dart';
import 'package:med/features/screens/screens.dart';
import 'constants/constants.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColor.themeColor,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UdiiBaba',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.scaffoldBackgroungColor,
          primarySwatch: buildMaterialColor(AppColor.themeColor),
          fontFamily: 'Montserrat',
        ),
        home: const ScreenControl());
  }
}

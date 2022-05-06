import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:may_ui_test/src/pages/home_page/home_page.dart';
import 'package:may_ui_test/src/utils/color_utls.dart';
import 'package:may_ui_test/src/utils/constant_colors.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const cardTheme = CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      darkTheme: ThemeData.dark().copyWith(cardTheme: cardTheme),
      theme: ThemeData(
        primarySwatch: generateMaterialColor(color: AppColorPalette.lightGrey),
        cardTheme: cardTheme,
      ),
      home: HomePage(),
    );
  }
}

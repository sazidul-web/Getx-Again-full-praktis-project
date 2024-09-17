import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sazidul_test/HomePage.dart';
import 'package:sazidul_test/Langues.dart';
import 'package:sazidul_test/NextThreePage.dart';
import 'package:sazidul_test/Nextpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: false,
      ),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      translations: Langues(),
      home: HomePage(),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/Nextpage', page: () => Nextpage()),
        GetPage(name: '/NextThreePage', page: () => NextThreePage()),
      ],
    );
  }
}

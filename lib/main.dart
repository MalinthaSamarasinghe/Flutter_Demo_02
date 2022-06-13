import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of the application.
        brightness: Brightness.light,
      ),
      home: const MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/myHomePage': (context) => const MyHomePage(),
      },
    );
  }
}

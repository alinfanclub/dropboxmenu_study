import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdropdown/controller/dropbox_con.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx를 이용한 드롭박스 구현',
      initialBinding: BindingsBuilder(() {
        Get.put(dropboxCon());
      }),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 251, 207, 140),
        ),
      ),
      home: Home(),
    );
  }
}

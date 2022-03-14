import 'package:f_state_handling_base_project/ui/controllers/my_color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(MyColorController());
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Base project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: SafeArea(child: HomePage()),
        ));
  }
}

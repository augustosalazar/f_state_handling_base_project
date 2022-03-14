import 'package:f_state_handling_base_project/ui/providers/my_color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Base project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: ChangeNotifierProvider(
            create: (context) => MyColorProvider(),
            child: SafeArea(child: HomePage()),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:iti_training/modules/first_task/first_task_screen.dart';
import 'package:iti_training/modules/second_task/second_task_screen.dart';
import 'package:iti_training/modules/section_2/second_task/s2_second_task_screen.dart';

import 'modules/section_2/first_task/s2_first_task_screen.dart';

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
      home: const S2SecondTaskScreen(),
    );
  }
}

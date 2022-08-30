import 'package:flutter/material.dart';
import 'package:iti_training/modules/section_2&3/first_task/home_screen.dart';

import 'modules/section_2&3/first_task/room_details_screen.dart';
import 'modules/section_2&3/first_task/s2_first_task_screen.dart';


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
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "room_details": (context) => RoomDetailsScreen(),
        "room_list": (context) => S2FirstTaskScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iti_training/modules/section_2&3/first_task/home_screen.dart';
import 'package:iti_training/modules/section_4%20%5BMovie_app%5D/movie_details/movie_details_screen.dart';
import 'package:iti_training/modules/section_4%20%5BMovie_app%5D/movies/movies_screen.dart';

import '../modules/section_2&3/first_task/room_details_screen.dart';
import '../modules/section_2&3/first_task/s2_first_task_screen.dart';
import 'movie_app/movie_layout.dart';

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
      initialRoute: "movie_layout",
      theme: ThemeData.dark(),
      routes: {
        "/": (context) => HomeScreen(),
        "room_details": (context) => RoomDetailsScreen(),
        "room_list": (context) => S2FirstTaskScreen(),
        "movie_layout": (context) => MovieLayout(),
        "movie_screen": (context) => MoviesScreen(),
        "movie_details_screen": (context) => MovieDetailsScreen(),
      },
    );
  }
}

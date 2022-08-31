import 'package:flutter/material.dart';
import 'package:iti_training/modules/section_4%20%5BMovie_app%5D/categories/categories_screen.dart';
import 'package:iti_training/modules/section_4%20%5BMovie_app%5D/favorite/favorites_screen.dart';
import 'package:iti_training/modules/section_4%20%5BMovie_app%5D/movies/movies_screen.dart';
import 'package:iti_training/modules/section_4%20%5BMovie_app%5D/settings/settings_screen.dart';

class MovieLayout extends StatefulWidget {
  @override
  State<MovieLayout> createState() => _MovieLayoutState();
}

class _MovieLayoutState extends State<MovieLayout> {
  int currentIndex = 0;

  List<Widget> bottomScreens = [
    MoviesScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ];

  List<String> titles = [
    "Watch+",
    "Categories",
    "Favourites",
    "Settings",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text(
              titles[currentIndex],
              style: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xfff43370),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.search,
                ),
              ),
            ],
        backgroundColor: Color(0xff191826),
      ),
      body: bottomScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          },
        selectedItemColor: Color(0xfff43370),
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xff191826),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

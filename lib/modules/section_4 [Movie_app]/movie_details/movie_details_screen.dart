import 'package:flutter/material.dart';
import 'package:iti_training/Models/movie/MovieModel.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MovieDetails? movieDetails = ModalRoute.of(context)?.settings.arguments as MovieDetails;

    return Scaffold(
      backgroundColor: Color(0xff191826),
      appBar:AppBar(
        title: Text(
          "Movie Details",
          style: TextStyle(
            color: Color(0xfff43370)
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff191826),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 400,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              child: Image(
                image: NetworkImage(
                    movieDetails.image
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              decoration:
              BoxDecoration(
                  color: Color(0xff191826),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xfff43370),
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(2, 3))
                  ]
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.title,
                      color: Color(0xfff43370),
                    ),
                    title: Text(
                    movieDetails.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      movieDetails.subtitle,
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iti_training/Models/Room/RoomModel.dart';

class RoomDetailsScreen extends StatelessWidget {
  const RoomDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewRoom? room = ModalRoute.of(context)?.settings.arguments as NewRoom?;

    return Scaffold(
      appBar:AppBar(
        title: Text("Room Details"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image(
              image: NetworkImage(
                "${room?.image}"
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
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blueAccent,
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
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      "${room?.title}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    subtitle: Text(
                        "${room?.subtitle}",
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

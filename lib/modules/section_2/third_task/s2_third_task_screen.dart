import 'package:flutter/material.dart';
import 'package:iti_training/modules/section_2/second_task/s2_second_task_screen.dart';

class S2ThirdTaskScreen extends StatelessWidget {
  const S2ThirdTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Android ATC Pizza Place"),
      ),
      body: Container(
        width: double.infinity,
        height: 100,
        margin:EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap:  () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const S2SecondTaskScreen()),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
            color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const ListTile(
                  leading: CircleAvatar(
                    maxRadius: 60,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80'
                    ),
                  ),
                  title: Text(
                    'Vegetable Pizza',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white
                ),
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

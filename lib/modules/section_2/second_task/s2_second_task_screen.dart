import 'package:flutter/material.dart';

class S2SecondTaskScreen extends StatelessWidget {
  const S2SecondTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        title: Text("ListTile Widget"),
        ),
      body: Column(
        children: [
          ListTile(
            leading: Container(
              height: 100,
              child: Icon(
                Icons.phone,
                color:Colors.blueAccent,
              ),
            ),
            title: Text(
                'Phone',
                style: TextStyle(
                    color: Colors.blueAccent
                )
            ),
            subtitle:Text(
              "01119616966",
              style: TextStyle(
                fontSize:20,
                color: Colors.blueAccent
              ),
            ),
            trailing: IconTheme(
              data: new IconThemeData(
                color:  Colors.blueAccent,
              ),
              child: Icon(
                  Icons.shopping_cart
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Container(
              height: 100,
              child: Icon(
                Icons.alternate_email,
                color:  Colors.blueAccent,
              ),
            ),
            title: Text(
                'Email',
                style: TextStyle(
                    color: Colors.blueAccent
                )
            ),
            subtitle:  Text(
              "saberm19071911@gmail.com",
              style: TextStyle(
                fontSize: 18,
                  color: Colors.blueAccent
              ),
            ),
            trailing: IconTheme(
              data: new IconThemeData(
                color:  Colors.blueAccent,
              ),
              child: Icon(
                  Icons.send
              ),
            ),

          ),
        ],
      ),
    );
  }
}

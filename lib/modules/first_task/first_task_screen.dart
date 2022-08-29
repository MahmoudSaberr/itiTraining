import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstTaskScreen extends StatelessWidget {
  const FirstTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Profile"),
          centerTitle: true,
          actions: [
            Icon(
                 Icons.favorite
             ),
            SizedBox(width: 15,),
            Icon(
                 Icons.menu,
             ),
            SizedBox(width: 15,),
          ],
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai19-6.fna.fbcdn.net/v/t1.6435-9/135609485_1579282308924602_3702952914730473910_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=7AY-33tAdjIAX8wA_2T&_nc_ht=scontent.fcai19-6.fna&oh=00_AT9GwkzinCowzBFNEYnFv4q4bcBFFKsSx3JbhA88xuq9Gg&oe=6330B100'
                  ),
                ),
                Text(
                  "Mahmoud Saber",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  "MOBILE DEVELOPER",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Creat great projects",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                Text(
                  "@TwWorks",
                  style:
                  TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height:50,
                        width: 50,
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blueAccent,
                          size: 30,
                        )
                    ),
                    Container(
                        height:50,
                        width: 50,
                        child: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                    ),
                    Container(
                        height:50,
                        width: 50,
                        child: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 40.0,
                    end: 40.0,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 2.0,
                    color: Colors.blueAccent[100],
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: ListTile(
                        title: Icon(
                          Icons.arrow_circle_right,
                          size: 50,color: Colors.indigo,
                        ),
                        subtitle: Text(
                          "1.3K \n Followers",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),
                          textAlign: TextAlign.center,),
                      ),
                    ),
                    Container(
                      height: 100,
                      width:150,
                      child: ListTile(
                        title: Icon(
                          Icons.arrow_circle_right,
                          size: 50,color: Colors.indigo,
                        ),
                        subtitle: Text(
                          "1.3K \n Followers",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iti_training/Models/Room/BankRoomsModel.dart';
import 'package:iti_training/Models/Room/RoomModel.dart';
import 'package:iti_training/modules/section_2&3/first_task/home_screen.dart';

class S2FirstTaskScreen extends StatefulWidget {
  const S2FirstTaskScreen({Key? key}) : super(key: key);

  @override
  State<S2FirstTaskScreen> createState() => _S2FirstTaskScreen();
}

class _S2FirstTaskScreen extends State<S2FirstTaskScreen> {

  var room = BankRoomModel();
  bool isNext = false;
  int firstIndex = 0;
  int secondIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Room List"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 230,
            margin: EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    'room_details',
                    arguments: NewRoom(
                        image: room.rooms[firstIndex].image,
                        title: room.rooms[firstIndex].title,
                        subtitle: room.rooms[firstIndex].subtitle),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network(
                          '${room.rooms[firstIndex].image}', // width: 300,
                          height: 150,
                          fit: BoxFit.fill),
                    ),
                    ListTile(
                      title: Text(
                        '${room.rooms[firstIndex].title}',
                      ),
                      subtitle: Text(
                        '${room.rooms[firstIndex].subtitle}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 230,
            margin:EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                      context,
                      'room_details',
                    arguments: NewRoom(
                        image: room.rooms[secondIndex].image,
                        title: room.rooms[secondIndex].title,
                        subtitle: room.rooms[secondIndex].subtitle),
                  );
                },                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network(
                          '${room.rooms[secondIndex].image}',
                          // width: 300,
                          height: 150,
                          fit:BoxFit.fill
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '${room.rooms[secondIndex].title}',
                      ),
                      subtitle: Text(
                        '${room.rooms[secondIndex].subtitle}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                  ),
            ),
          ),
          InkWell(
            child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Container(
                      height: 50,
                      width: 240,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "Next",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.blueAccent
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.skip_next,
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                    ),
                  ),
            onTap: (){
              setState((){
                firstIndex = 2;
                secondIndex = 3;
                });
            },
          ),
        ],
      ),
    );
  }
}
/*
*                 onTap: () {
                  Navigator.pushNamed(
                      context, 'room_details');
                }
* */
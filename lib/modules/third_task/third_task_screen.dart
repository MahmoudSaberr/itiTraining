import 'package:flutter/material.dart';
import 'package:iti_training/Models/Room/BankRoomsModel.dart';

class ThirdTaskScreen extends StatefulWidget {
  const ThirdTaskScreen({Key? key}) : super(key: key);

  @override
  State<ThirdTaskScreen> createState() => _ThirdTaskScreenState();
}

class _ThirdTaskScreenState extends State<ThirdTaskScreen> {

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
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 230,
            margin:EdgeInsets.all(8.0),
            child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: InkWell(
                    onTap: () => print("tap"),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                          child: Image.network(
                              '${room.rooms[firstIndex].image}',
                              // width: 300,
                              height: 150,
                              fit:BoxFit.fill
                          ),
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
                onTap: () => print("ciao"),
                child: Column(
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
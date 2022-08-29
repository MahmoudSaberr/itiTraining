import 'package:iti_training/Models/RoomModel.dart';

class BankRoomModel {
  List<NewRoom> rooms =[
    NewRoom(
      "https://q-xx.bstatic.com/xdata/images/hotel/840x460/148099656.jpg?k=deea0b8cb989133477e9cd6f32312667e4ceb7d8ba6e2bf27cf559b041c1cf15&o=",
        "King Room",
        "A room with a king-sized bed."
    ),
    NewRoom(
      "https://cdn.traveltripper.io/site-assets/512_855_12327/media/2018-02-27-080006/large_ex-double-2.jpg",
      "Double Room",
      "A room assigned to two people.",
    ),
    NewRoom(
        "https://media-cdn.tripadvisor.com/media/photo-s/11/d7/82/0c/single-room.jpg",
        "Single Room",
        "A room assigned to one people."
    ),
    NewRoom(
        "https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2020/7/6/0/IO_Kate-Lester-Interiors_Brooklyn-Burbs_015.jpg.rend.hgtvcom.616.411.suffix/1594056143981.jpeg",
        "Family Room",
      "A room assigned to three or four people.",
     )
  ];

  int currentRoom = 0;

  NewRoom GetCurrentRoom() {
    return rooms[currentRoom];
  }
}
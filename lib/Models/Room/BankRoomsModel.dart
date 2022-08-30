import 'package:iti_training/Models/Room/RoomModel.dart';

class BankRoomModel {
  List<NewRoom> rooms =[
    NewRoom(
        image: "https://q-xx.bstatic.com/xdata/images/hotel/840x460/148099656.jpg?k=deea0b8cb989133477e9cd6f32312667e4ceb7d8ba6e2bf27cf559b041c1cf15&o=",
        title: "King Room",
        subtitle: "A room with a king-sized bed."
    ),
    NewRoom(
      image: "https://cdn.traveltripper.io/site-assets/512_855_12327/media/2018-02-27-080006/large_ex-double-2.jpg",
      title: "Double Room",
      subtitle: "A room assigned to two people.",
    ),
    NewRoom(
        image: "https://media-cdn.tripadvisor.com/media/photo-s/11/d7/82/0c/single-room.jpg",
        title: "Single Room",
        subtitle: "A room assigned to one people."
    ),
    NewRoom(
      image: "https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2020/7/6/0/IO_Kate-Lester-Interiors_Brooklyn-Burbs_015.jpg.rend.hgtvcom.616.411.suffix/1594056143981.jpeg",
      title: "Family Room",
      subtitle: "A room assigned to three or four people.",
     )
  ];

  int currentRoom = 0;

  NewRoom GetCurrentRoom() {
    return rooms[currentRoom];
  }
}
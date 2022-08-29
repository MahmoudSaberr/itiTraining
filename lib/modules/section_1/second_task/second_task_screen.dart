import 'package:flutter/material.dart';
class SecondTaskScreen extends StatelessWidget {
  const SecondTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
           alignment: AlignmentDirectional.bottomEnd,
           children: [
             Image(
               image: NetworkImage(
                 'https://i.pinimg.com/originals/66/f1/6e/66f16eee76fa106a4cc160cbf6a58611.jpg',
               ),
               fit: BoxFit.cover,
               height: 200.0,
               width: double.infinity,
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
                 'Account Settings',
                 style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
           ],
         ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 30),
                child: FlatButton(
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  onPressed: () {
                  },
                ),
              ),
            ],
          ),
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
                    color: Color(0xfff38507),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3))
                  ]
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color:Color(0xfff38507),
                    ),
                    title: Text('Phone'),
                    subtitle:Text(
                      "01119616966",
                      style: TextStyle(
                        fontSize:20,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.alternate_email,
                      color: Color(0xfff38507),
                    ),
                    title: Text('Email'),
                    subtitle:  Text(
                      "saberm19071911@gmail.com",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.lock,
                      color: Color(0xfff38507),
                    ),
                    title: Text('Password'),
                    subtitle:  Text(
                      "********",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
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
                    Text("Log Out"),
                    SizedBox(width: 10,),
                    Icon(
                      Icons.logout,
                      color: Colors.red,
                    )
                  ],
                ),
            ),
          )
      ),
        ],
      ),
    );
  }
}

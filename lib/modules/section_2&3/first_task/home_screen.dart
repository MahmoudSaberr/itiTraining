import 'package:flutter/material.dart';
import 'package:iti_training/modules/section_2&3/first_task/s2_first_task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://i.pinimg.com/originals/a8/e2/ef/a8e2ef1ba4f85ef7f1c8c0fbab38c5ac.png"
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
                            "Go Now !!",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.blueAccent
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(
                            Icons.start,
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const S2FirstTaskScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

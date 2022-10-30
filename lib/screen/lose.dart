import 'package:flutter/material.dart';
import 'package:doan_ltdd/screen/quetions.dart';

class Lose extends StatefulWidget {
  @override
  _LoseState createState() => _LoseState();
}

class _LoseState extends State<Lose> {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/loose.png"), fit: BoxFit.cover)),
      child: Scaffold(
          floatingActionButton: ElevatedButton(
            child: Text("Share With Friends"),
            onPressed: () {},
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Oh No!",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "YOUR ANSWER IS CORRECT",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Icon(
                    Icons.error_outline,
                    size: 100,
                    color: Colors.white,
                  ),
                  Text(
                    "Go to the reward",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Question()));
                    },
                    child: Text('Home'),
                  ),
                ]),
          )),
    );
  }
}

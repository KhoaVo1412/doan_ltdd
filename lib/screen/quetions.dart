import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:doan_ltdd/screen/lose.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/background.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "GAME",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        //drawer: Drawer(),
        floatingActionButton: ElevatedButton(
          child: Text(
            "End Game",
            style: TextStyle(fontSize: 17),
          ),
          onPressed: () {},
        ),
        body: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Question demo: team ARB co bao nhieu thanh vien _______  ",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(padding: EdgeInsets.all(15)),
              SizedBox(
                height: 60,
                width: 60,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      strokeWidth: 15,
                      backgroundColor: Colors.yellow,
                      value: seconds / maxSeconds,
                    ),
                    Center(
                      child: Text(
                        seconds.toString(),
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "A. 1",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "B. 2",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "C. 3",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "D. 4",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Icon(
                            Icons.phone,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Gọi cho \n người thân',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Icon(
                            Icons.people,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Trợ giúp\ntu khan gia',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Icon(
                            Icons.import_contacts,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Trợ giúp\n50/50',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Icon(
                            Icons.stacked_bar_chart_sharp,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Trợ giúp \n từ hệ thống',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
      ),
    );
  }

  int maxSeconds = 30;
  int seconds = 30;
  Timer? timer;
  QueTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() => seconds--);
      if (seconds == 0) {
        timer?.cancel();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Lose()));
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    QueTimer();
  }
}

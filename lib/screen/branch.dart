import 'package:doan_ltdd/screen/quetions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Branch extends StatefulWidget {
  const Branch({super.key});

  @override
  State<Branch> createState() => _BranchState();
}

class _BranchState extends State<Branch> {
  //tao arr chua hinh
  List<String> assets = [
    "assets/img/java.png",
    "assets/img/cpp.png",
    "assets/img/js.png",
    "assets/img/py.png",
  ];

  Widget customCard(String language, String assets) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: InkWell(
        child: Material(
          color: Colors.blue,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(100),
                    elevation: 10.0,
                    child: Container(
                      height: 150,
                      width: 150,
                      child: ClipOval(
                        child: Container(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Question(),
                                ),
                              );
                            },
                            child: Image(
                              //goi mang assets
                              image: AssetImage(assets),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    language,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Bạn có muốn thử sự hiểu biết của mình về ngôn ngữ ${language} ?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Screen Branch',
          style: TextStyle(),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customCard("C++", assets[0]),
          customCard("Java", assets[1]),
          customCard("NoteJs", assets[2]),
          customCard("PyThon", assets[3]),
        ],
      ),
    );
  }
}

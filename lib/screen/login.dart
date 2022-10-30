import 'package:flutter/material.dart';
import 'package:doan_ltdd/screen/quetions.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final txtusername = TextEditingController();
  final txtpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('APP ai la trieu phu'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/img/kbc.png'),
            // SizedBox(
            //   height: 10,
            // ),
            Center(
              child: Text(
                'Welcome \nAi La Trieu Phu',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: txtusername,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person_outline),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: txtpassword,
                decoration: InputDecoration(
                  labelText: 'PassWord',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person_outline),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: TextButton(
                onPressed: () {
                  if (checkLogin()) {
                    //showDialog(

                    // context: context,
                    // builder: (context) {
                    //   return AlertDialog(
                    //     //title: Text('Login'),
                    //     //content: Text('Login thanh cong'),
                    //     actions: [
                    //       TextButton(
                    //         onPressed: () => Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //             builder: (context) => Question(),
                    //           ),
                    //         ),
                    //         child: Text('OK'),
                    //       )
                    //     ],
                    //   );
                    // },
                    //);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Question(),
                        ));
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Err'),
                            content:
                                const Text('Chua nhap user hoac password.'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('OK'),
                              )
                            ],
                          );
                        });
                  }
                },
                child: Container(
                  height: 25,
                  width: 55,
                  color: Colors.blue,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  child: Text('Quen mat khau'),
                )
              ],
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => Question(),
            //         ));
            //   },
            //   child: Text('Login'),
            // ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Continue with GG'),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Project with Team ARB',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }

  bool checkLogin() {
    if (txtusername.text == "" || txtpassword.text == "") {
      return false;
    }
    return true;
  }
}

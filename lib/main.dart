import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController emailTF = TextEditingController();
  TextEditingController passTF = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                controller: emailTF,
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextField(
                controller: passTF,
                decoration: InputDecoration(hintText: "Password"),
              ),
              ElevatedButton(
                onPressed: () {
                  String email = emailTF.text;
                  String pass = passTF.text;
                  print("User Email:$email");
                  print("User Password:$pass");
                },
                child: Text("Login"),
              ),
              /*InkWell(
                onTap: () {print("Hello Hello")},
                child: Container(
                  color: Colors.blue.shade700,
                  width: 200,
                  child: Text("Click Me"),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}

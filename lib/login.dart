import 'package:flutter/material.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  _LoginRouteState createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  TextEditingController emailTE = TextEditingController();
  TextEditingController passTE = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.deepOrange,
                  Colors.orangeAccent,
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.1,
                ),
                Container(
                  height: size.height * 0.1,
                  child: const Center(
                    child: Icon(
                      Icons.info_sharp,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.1,
                  width: size.width,
                  margin: const EdgeInsets.only(right: 20),
                  child: const Text(
                    "Login",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 5,
                                spreadRadius: -3,
                                color: Colors.black),
                          ],
                        ),
                        margin: const EdgeInsets.only(top: 10, bottom: 15),
                        child: TextField(
                          decoration: const InputDecoration(
                            isDense: true, // used to size(height) textField
                            contentPadding: EdgeInsets.all(
                                11), // used to size(height) textField
                            enabledBorder: InputBorder.none,
                            icon: Icon(
                              Icons.mail,
                            ),
                            hintText: "Email",
                          ),
                          controller: emailTE,
                        ),
                      ),
                      Container(
                        child: TextField(
                          controller: passTE,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(11),
                            enabledBorder: InputBorder.none,
                            icon: Icon(Icons.password_sharp),
                            hintText: "Password",
                          ),
                          autocorrect: false,
                          enableSuggestions: false,
                          obscureText: true,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            var email = emailTE.text;
                            var pass = passTE.text;
                            print("Email is $email");
                            print("Password is $pass");
                          },
                          child: Text("Login"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

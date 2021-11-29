import 'package:flutter/material.dart';

class RegisterRoute extends StatefulWidget {
  const RegisterRoute({Key? key}) : super(key: key);
  @override
  _RegisterRouteState createState() => _RegisterRouteState();
}

class _RegisterRouteState extends State<RegisterRoute> {
  @override
  Widget build(BuildContext context) {
    TextEditingController fullnameTE = TextEditingController();
    TextEditingController emailTE = TextEditingController();
    TextEditingController passwordTE = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.green.shade100),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Wrap(
            direction: Axis.vertical,
            //alignment: WrapAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * 0.9,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: fullnameTE,
                  decoration: const InputDecoration(
                      hintText: "Fullname", fillColor: Colors.white),
                ),
              ),
              Container(
                width: size.width * 0.9,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: emailTE,
                  decoration: const InputDecoration(
                      hintText: "email", fillColor: Colors.white),
                ),
              ),
              Container(
                width: size.width * 0.9,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: passwordTE,
                  decoration: const InputDecoration(
                      hintText: "Password", fillColor: Colors.white),
                  obscureText: true,
                ),
              ),
              Container(
                  width: 200,
                  // alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.all(5),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.spaceAround,
                    //crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          String fullname = fullnameTE.text;
                          print("The fullname is $fullname");
                        },
                        child: const Text("Register"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Cancel"),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

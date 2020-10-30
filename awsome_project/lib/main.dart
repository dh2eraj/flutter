import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        body: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width, //full width of screen
          height: MediaQuery.of(context).size.height, //full length of screen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue,
                height: 100,
                width: 100,
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: View()
        )
    );
  }
}

class View extends StatefulWidget {

  ViewState createState() => ViewState();

}

class ViewState extends State{

  // Default Background Color.
  Color colorCode = Colors.lightBlue;

  final Random random = Random();

  generateRandomColor(){

    Color tmpColor = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    ) ;

    setState(() {

      colorCode = tmpColor ;

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCode,
      appBar: AppBar(title: Text("Test application"), centerTitle: true,),
      body: Stack(
        children: [
          Container(
            child: GestureDetector(
              onTap: () => generateRandomColor(),
            ),
          ),
          Center(
            child: Container(
              child: Text(
                "Hey there!",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
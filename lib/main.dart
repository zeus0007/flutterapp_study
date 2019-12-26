import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '연습', home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('버튼'),
        ),
        body: MyButton());
  }
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  var backColor = Colors.black;
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Container(
          child: Text(
            number.toString(),
            style: TextStyle(fontSize: 128),
          ),
          padding: EdgeInsets.all(32),
        ),
        Row(
          children: <Widget>[
            makeButton('더하기'),
            makeButton('빼기'),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    ));
  }

  Widget makeButton(String title) {
    return RaisedButton(
      child: Text(title),
      onPressed: () {
        setState(() {
          if (title == '더하기') {
            number = number + 1;
          } else {
            number = number - 1;
          }
        });
      },
      textColor: Colors.white,
      color: backColor,
    );
  }
}

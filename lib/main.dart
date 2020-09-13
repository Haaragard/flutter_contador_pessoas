import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode entrar!";

  void _changePeople(int value) {
    setState(() {
      _people += value;

      if (_people < 0) {
        _infoText = "Mundo invertido?!";
      } else if (_people <= 10){
        _infoText = "Pode entrar!";
      } else {
        _infoText = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: $_people",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("+1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                  onPressed: () {
                    _changePeople(1);
                  },
                ),
                FlatButton(
                  child: Text("-1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                  onPressed: () {
                    _changePeople(-1);
                  },
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(10.0),),
            Text(_infoText,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
              ),

            ),
          ],
        ),
      ],
    );
  }
}

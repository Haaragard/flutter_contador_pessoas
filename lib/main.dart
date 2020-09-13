import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Pessoas: 00",
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
              onPressed: () {},
            ),
            FlatButton(
              child: Text("-1",
                style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
              onPressed: () {},
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10.0),),
        Text("Pode entrar!",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 30.0,
          ),

        ),
      ],
    ),
  ));
}
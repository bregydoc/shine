import 'package:flutter/material.dart';
import 'package:pigment/pigment.dart';

const _middleHeight = 100.0;

class Header extends StatelessWidget {
  String title;
  String color = "";

  Header({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              child: Material(
                child: Container(
                  height: _middleHeight * 1.6,
                  decoration: BoxDecoration(
                    // color: Pigment.fromString("#241332"),
                    gradient: LinearGradient(colors: [
                      Pigment.fromString("#809DEF"),
                      Pigment.fromString("#9C73E2"),
                    ]),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60.0),
                    ),
                  ),
                  child: Text("HELLO"),
                ),
              ),
            ),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  height: _middleHeight,
                  decoration: BoxDecoration(
                    color: Pigment.fromString(this.color),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60.0),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 30.0, right: 80.0),
                      child: Text(
                        "Hello World",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 24.0,
                          color: Pigment.fromString("#092134"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

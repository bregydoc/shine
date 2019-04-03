import 'package:flutter/material.dart';
import 'package:pigment/pigment.dart';

class TextBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TexBarState();
}

class _TexBarState extends State<TextBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            child: Container(
              // padding: EdgeInsets.all(8.0),
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  color: Pigment.fromString("#ffffff"),
                  boxShadow: [
                    BoxShadow(
                      color: Pigment.fromString("#10101622"),
                      offset: Offset(0, -2.0),
                      blurRadius: 10.0,
                      spreadRadius: -1.0,
                    ),
                  ]),
              height: 52.0,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      Icons.add,
                      color: Pigment.fromString("#3271FF"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: TextField(
                      style: TextStyle(
                        fontFamily: "Open Sans",
                        fontSize: 14.0,
                        color: Pigment.fromString("#092134"),
                      ),
                      cursorColor: Pigment.fromString("#3271FF"),
                      cursorWidth: 1.2,
                      cursorRadius: Radius.circular(1.0),
                      decoration: InputDecoration(
                        hintText: "Type a Message",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipPath(
                      clipper: SendButtonClipper(),
                      child: Container(
                        color: Pigment.fromString("#3271FF"),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                print("send");
                              },
                              color: Colors.white,
                              icon: Icon(Icons.send),
                            ),
                          ),
                        ),
                        height: 52.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SendButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0.0, size.height);
    Offset cp1 = Offset(8.0, size.height);
    Offset cp2 = Offset(0.0, 0.0);

    path.cubicTo(cp1.dx, cp1.dy, cp2.dx, cp2.dy, 32.0, 0.0);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    // path.lineTo(0.0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

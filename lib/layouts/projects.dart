import 'package:flutter/material.dart';
import 'package:pigment/pigment.dart';
import 'package:shine/components/header.dart';
import 'package:shine/components/textbar.dart';

class ProjectLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProjectLayoutState();
}

class _ProjectLayoutState extends State<ProjectLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      // bottom: false,
      child: Container(
        color: Pigment.fromString("white"),
        child: Column(
          // direction: Axis.vertical,
          children: <Widget>[
            Header(
              color: "#FFFFFF",
              title: "Projects",
            ),
            Expanded(
              child: Material(
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        // color: Pigment.fromString("#241332"),
                        child: Text("data"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextBar(),
          ],
        ),
      ),
    );
  }
}

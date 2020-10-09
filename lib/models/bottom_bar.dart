import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomBar extends StatefulWidget {
  Function onPressed;
  bool bottomIcons;
  String text;
  IconData icons;

  BottomBar(
      {@required this.onPressed,
      @required this.bottomIcons,
      @required this.text,
      @required this.icons});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onPressed,
        child: widget.bottomIcons == true
            ? Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                          offset: Offset(0.0, 0.0))
                    ],
                    borderRadius: BorderRadius.circular(5.0)),
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Icon(
                      widget.icons,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      widget.text,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            : Icon(widget.icons));
  }
}

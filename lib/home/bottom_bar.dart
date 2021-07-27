import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 100,
            margin: EdgeInsets.only(left: 50, top: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
//draggable
            child: Draggable<int>(
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              feedback: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
              ),
              childWhenDragging: Container(),
            ),
//
          ),
          Container(
            height: 50,
            width: 100,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 5,
                  color: Colors.black,
                )),
          ),
          Container(
            height: 50,
            width: 100,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

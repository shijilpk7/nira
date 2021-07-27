import 'package:flutter/material.dart';
import 'package:nira/home/layout.dart';
import 'top_bar.dart';
import 'bottom_bar.dart';
import 'dragdots/blackdragdot.dart';
import 'dragdots/yellowdragdot.dart';


class GameConsole extends StatefulWidget {
  List<Widget>accepted=[YellowDragDot()];
  List<Widget>current=[BlackDragDot()];

  @override
  _GameConsoleState createState() => _GameConsoleState();
}

class _GameConsoleState extends State<GameConsole> {
  bool accepted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(
        left: 6,
      ),
      child: Stack(
        children: <Widget>[
          CustomPaint(
            size: Size(300, 300),
            painter: NiraLayout(),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(30, 215, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(175, 215, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(325, 215, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(30, 335, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(175, 335, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(325, 335, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(30, 460, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(175, 460, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.fromLTRB(325, 460, 0, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.black,
              ),
            ),
//DROP
            child: DragTarget<int>(
              builder: (BuildContext context, List<Widget> incoming, List rejected) {
                return accepted[0];
                    Stack(
                      children: <Widget>[
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    );
              },
              onWillAccept: (data) {
                return true;
              },
              onAccept: (data) {
                setState(() {
                  accepted = true;
                });
              },
            ),
          ),

//top container
          Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              TopBar(),
              SizedBox(
                height: 365,
              ),

//botom container
              BottomBar(),
            ],
          ),
        ],
      ),
    );
  }
}

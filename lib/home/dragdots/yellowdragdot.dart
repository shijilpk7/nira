import 'package:flutter/material.dart';

class YellowDragDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: Colors.yellow ,shape: BoxShape.circle,),
    );
  }
}
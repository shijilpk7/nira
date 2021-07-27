import 'package:flutter/material.dart';

class BlackDragDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: Colors.red ,shape: BoxShape.circle,),
    );
  }
}
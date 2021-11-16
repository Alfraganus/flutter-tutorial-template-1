import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlackFriday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 250,
        color:  Color.fromRGBO(162, 120, 244, 1),
      ),
    );
  }
}

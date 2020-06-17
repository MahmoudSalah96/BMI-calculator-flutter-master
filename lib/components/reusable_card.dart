import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color colr;
  final Widget cardChild;
  final Function onPress;
  ReuseableCard({@required this.colr, this.cardChild,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colr,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

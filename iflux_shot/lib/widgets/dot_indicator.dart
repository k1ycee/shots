import 'package:flutter/material.dart';
import 'package:iflux_shot/utils/color.dart';

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  Indicator({this.currentIndex, this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: positionIndex == currentIndex
          ? MediaQuery.of(context).size.width / 100 * 5
          : MediaQuery.of(context).size.width / 100 * 1.5,
      height: positionIndex == currentIndex
          ? MediaQuery.of(context).size.height / 100 * 0.5
          : MediaQuery.of(context).size.height / 100,
      decoration: BoxDecoration(
          // border: Border.all(
          //     style: BorderStyle.solid,
          //     color: positionIndex == currentIndex ? blue : dotIndicator),
          color: positionIndex == currentIndex ? blue : dot,
          borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width / 100 * 30)),
    );
  }
}

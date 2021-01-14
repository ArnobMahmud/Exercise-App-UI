import 'package:exercise_app_ui/constants/constant.dart';
import 'package:flutter/material.dart';

class SeasonCard extends StatelessWidget {
  final int seasonNum;
  final bool isDone;
  final Function onPressed;
  const SeasonCard({
    Key key,
    this.seasonNum,
    this.isDone,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth / 2 - 10,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13)
            ],
            borderRadius: BorderRadius.circular(13)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor)),
                    height: 42,
                    width: 43,
                    child: Icon(Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor),
                  ),
                ),
                Text(
                  "Season $seasonNum",
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

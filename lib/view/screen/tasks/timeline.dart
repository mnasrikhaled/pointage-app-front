import 'package:flutter/material.dart';
import 'package:pointageapp/test.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeLine extends StatelessWidget {
  final String title;
  final Color bgColor;
  final String slot;
  const TaskTimeLine(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.slot});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          _buildTimeLine(Colors.black),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCard(bgColor, title, slot),
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildTimeLine(Color color) {
    return Container(
      height: 80,
      width: 20,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
            indicatorXY: 0,
            width: 15,
            indicator: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(width: 5, color: color)),
            )),
        afterLineStyle: LineStyle(thickness: 2, color: color),
      ),
    );
  }

  Widget _buildCard(Color bgColor, String title, String slot) {
    return Container(
      width: 330,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(5),
      child: Column(children: [
        Text(
          title,
          style: TextStyle(
            color: Color.fromARGB(255, 20, 20, 20),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          slot,
          style: TextStyle(
            color: Color.fromARGB(255, 20, 20, 20),
            fontWeight: FontWeight.bold,
          ),
        )
      ]),
    );
  }
}

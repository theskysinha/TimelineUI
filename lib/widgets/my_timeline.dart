import 'package:flutter/material.dart';
import 'content_box.dart';
import 'package:timelines/timelines.dart';

import 'dates.dart';

class MyTimeline extends StatelessWidget {
  const MyTimeline({super.key});

  @override
  Widget build(BuildContext context) {

    return Timeline.tileBuilder(
      theme: TimelineThemeData(
        color: Color.fromARGB(255, 167, 165, 165)),
        builder: TimelineTileBuilder.connectedFromStyle(
          nodePositionBuilder: (context, index) => 0.20,
        contentsAlign: ContentsAlign.basic,
        oppositeContentsBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: MyDates(i: index),
        ),
        contentsBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ContentBox(i: index),
          ),
        connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
        indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,
        itemCount: 9,
        ),
      );
  }
}

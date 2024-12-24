import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeline extends StatelessWidget {
  bool isFirst;
  bool isLast;
  Widget endChild;
  MyTimeline({super.key, required this.isFirst, required this.isLast, required this.endChild});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: const LineStyle(
          color: Colors.greenAccent
        ),
        indicatorStyle: const IndicatorStyle(color: Colors.cyanAccent, width: 20),
        endChild: endChild,
      ),
    );
  }
}

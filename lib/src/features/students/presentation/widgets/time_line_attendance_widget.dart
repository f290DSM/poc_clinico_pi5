import 'package:flutter/material.dart';
import 'package:poc_clinico_pi5/src/features/students/data/attendance.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineStudantAttendance extends StatelessWidget {
  const TimeLineStudantAttendance({super.key, required this.attendance});

  final Attendance attendance;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.1,
      indicatorStyle: const IndicatorStyle(
        width: 15,
        color: Colors.amber,
        indicatorXY: 0.3,
        padding: EdgeInsets.all(8),
      ),
      beforeLineStyle: const LineStyle(
        color: Colors.blue,
        thickness: 4,
      ),
      afterLineStyle: const LineStyle(
        color: Colors.blue,
        thickness: 4,
      ),
      endChild: Container(
        constraints: const BoxConstraints(
          minHeight: 90,
        ),
        // color: Colors.lightGreenAccent,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(attendance.dateTime, style: Theme.of(context).textTheme.labelLarge,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, right: 16.0),
                  child: Text(attendance.professionalName, style: Theme.of(context).textTheme.labelLarge,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
              child: Text(attendance.content, style: Theme.of(context).textTheme.bodyMedium,),
            )
          ],
        ),
      ),
      startChild: Container(
        color: Colors.transparent,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poc_clinico_pi5/src/features/students/data/attendance.dart';
import 'package:poc_clinico_pi5/src/features/students/presentation/widgets/student_simple_card.dart';
import 'package:poc_clinico_pi5/src/features/students/presentation/widgets/time_line_attendance_widget.dart';

import '../../data/student.dart';

class StudentsAttendanceListWidget extends StatelessWidget {
  const StudentsAttendanceListWidget({
    super.key,
    required this.attendances, required this.student,
  });

  final Student student;
  final List<Attendance> attendances;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
          child: StudentSimpleCard(student: student),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: attendances.length,
              itemBuilder: (context, index) => TimeLineStudantAttendance(attendance: attendances[index])),
        ),
      ],
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:poc_clinico_pi5/src/features/students/data/student.dart';
import 'package:poc_clinico_pi5/src/features/students/presentation/widgets/time_line_attendance_widget.dart';

import '../students_attendance_page.dart';

class StudentSimpleCard extends StatelessWidget {
  const StudentSimpleCard({super.key, required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentsAttendancePage(student),
            ),
          );
        },
        leading: CircleAvatar(
          radius: 32,
          backgroundImage: MemoryImage(
            base64Decode(
              student.imageData!,
            ),
          ),
        ),
        title: Text(
          student.name!,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(
          student.description!,
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

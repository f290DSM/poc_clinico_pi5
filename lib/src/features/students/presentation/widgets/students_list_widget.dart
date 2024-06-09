import 'package:flutter/material.dart';
import 'package:poc_clinico_pi5/src/features/students/presentation/widgets/student_simple_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../data/student.dart';

class StudentsListWidget extends StatelessWidget {
  const StudentsListWidget({
    super.key,
    required this.students,
  });

  final List<Student> students;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) => StudentSimpleCard(student: students[index]));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poc_clinico_pi5/src/core/widgets/loading_widget.dart';
import 'package:poc_clinico_pi5/src/features/students/data/providers/attendance_provider.dart';
import 'package:poc_clinico_pi5/src/features/students/data/providers/students_provider.dart';
import 'package:poc_clinico_pi5/src/features/students/data/student.dart';
import 'package:poc_clinico_pi5/src/features/students/presentation/widgets/students_attendance_list_widget.dart';
import 'package:poc_clinico_pi5/src/features/students/presentation/widgets/students_list_widget.dart';

class StudentsAttendancePage extends ConsumerWidget {
  const StudentsAttendancePage(this.student, {super.key});

  final Student student;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var attendances = ref.watch(attendancesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estudantes'),
      ),
      body: attendances.when(
        data: (data) => StudentsAttendanceListWidget(student: student, attendances: data),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => LoadingWidget(),
      ),
    );
  }
}

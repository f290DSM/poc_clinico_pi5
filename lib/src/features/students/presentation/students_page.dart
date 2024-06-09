import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poc_clinico_pi5/src/core/widgets/loading_widget.dart';
import 'package:poc_clinico_pi5/src/features/students/data/providers/students_provider.dart';
import 'package:poc_clinico_pi5/src/features/students/presentation/widgets/students_list_widget.dart';

class StudentsPage extends ConsumerWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var students = ref.watch(studentsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estudantes'),
      ),
      body: students.when(
        data: (data) => StudentsListWidget(students: data),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => LoadingWidget(),
      ),
    );
  }
}

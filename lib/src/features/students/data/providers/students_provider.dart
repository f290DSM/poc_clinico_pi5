import 'package:poc_clinico_pi5/src/core/constants.dart';
import 'package:poc_clinico_pi5/src/features/students/data/student.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'students_provider.g.dart';

@riverpod
class Students extends _$Students {
  @override
  FutureOr<List<Student>> build() async {
    return Future.delayed(Duration(seconds: 3), () {
      return kStudants;
    });
  }
}

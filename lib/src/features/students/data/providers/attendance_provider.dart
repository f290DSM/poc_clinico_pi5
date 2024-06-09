import 'package:poc_clinico_pi5/src/core/constants.dart';
import 'package:poc_clinico_pi5/src/features/students/data/attendance.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_provider.g.dart';

@riverpod
class Attendances extends _$Attendances {
  @override
  FutureOr<List<Attendance>> build() async {
    return Future.delayed(Duration(seconds: 3), () {
      return enzoAttendances;
    });
  }
}

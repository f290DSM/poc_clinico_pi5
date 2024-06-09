import 'package:poc_clinico_pi5/src/features/students/data/student.dart';

class Attendance {
  final Student student;
  final String dateTime;
  final String professionalName;
  final String content;

  Attendance({
    required this.student,
    required this.dateTime,
    required this.professionalName,
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return {
      'student': this.student,
      'dateTime': this.dateTime,
      'professionalName': this.professionalName,
      'content': this.content,
    };
  }

  factory Attendance.fromMap(Map<String, dynamic> map) {
    return Attendance(
      student: map['student'] as Student,
      dateTime: map['dateTime'] as String,
      professionalName: map['professionalName'] as String,
      content: map['content'] as String,
    );
  }
}

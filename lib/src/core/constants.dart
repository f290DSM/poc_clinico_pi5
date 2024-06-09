import '../features/students/data/attendance.dart';
import '../features/students/data/student.dart';

enum ImageResourceEnum {
  logo('assets/images/logo_inclusivamente.svg'),
  profissional('assets/images/psicologo.svg'),
  familia('assets/images/pais.svg'),
  base64Avatar(base64);

  final String resource;

  const ImageResourceEnum(this.resource);
}

final kStudants = [
  Student(
    name: 'Enzo Gabriel',
    description: 'Aluno do terceiro módulo do curso de Mecatrônica',
    imageData: ImageResourceEnum.base64Avatar.resource,
  ),
  Student(
    name: 'Alvin Silva',
    description: 'Aluno do terceiro módulo do curso de Mecatrônica',
    imageData: ImageResourceEnum.base64Avatar.resource,
  ),
  Student(
    name: 'Frodo Santana',
    description: 'Aluno do terceiro módulo do curso de Mecatrônica',
    imageData: ImageResourceEnum.base64Avatar.resource,
  ),
  Student(
    name: 'Erika Gonçalves',
    description: 'Aluno do terceiro módulo do curso de Mecatrônica',
    imageData: ImageResourceEnum.base64Avatar.resource,
  ),
  Student(
    name: 'Esdras Bezerra',
    description: 'Aluno do terceiro módulo do curso de Mecatrônica',
    imageData: ImageResourceEnum.base64Avatar.resource,
  ),
];

final enzoAttendances = [
  Attendance(
    student: kStudants[0],
    dateTime: '2024-06-09',
    professionalName: 'Joaquin J S Xavier',
    content: 'Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss deixa as pessoas mais interessantis. Quem manda na minha terra sou euzis! Si num tem leite então bota uma pinga aí cumpadi! Pellentesque nec nulla ligula. Donec gravida turpis a vulputate ultricies.'
  ),
  Attendance(
    student: kStudants[0],
    dateTime: '2024-06-06',
    professionalName: 'Mirian Silva',
      content: 'Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss deixa as pessoas mais interessantis. Quem manda na minha terra sou euzis! Si num tem leite então bota uma pinga aí cumpadi! Pellentesque nec nulla ligula. Donec gravida turpis a vulputate ultricies.'
  ),
  Attendance(
    student: kStudants[0],
    dateTime: '2024-06-03',
    professionalName: 'Joaquin J S Xavier',
      content: 'Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss deixa as pessoas mais interessantis. Quem manda na minha terra sou euzis! Si num tem leite então bota uma pinga aí cumpadi! Pellentesque nec nulla ligula. Donec gravida turpis a vulputate ultricies.'
  ),
];

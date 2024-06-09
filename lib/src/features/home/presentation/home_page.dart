import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poc_clinico_pi5/src/core/constants.dart';
import 'package:poc_clinico_pi5/src/features/home/presentation/widgets/home_page_card.dart';
import 'package:poc_clinico_pi5/src/features/students/presentation/students_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(ImageResourceEnum.logo.resource),
      ),
      endDrawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                    child: Text(
                      'Funcionalidades',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StudentsPage()));
                  },
                  child: HomePageCard(
                    titulo: 'Pais ou Responsáveis',
                    descricao:
                        'Verifique o histórico de atendimento dos seu filhos e acompanhe seu progtresso.',
                    resourceEnum: ImageResourceEnum.familia,
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: HomePageCard(
                    titulo: 'Profissionais',
                    descricao:
                        'Pesquise alunos, atendimentos prestados e crie novos atendimentos.',
                    resourceEnum: ImageResourceEnum.profissional,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

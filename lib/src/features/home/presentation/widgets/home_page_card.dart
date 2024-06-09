import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.resourceEnum,
  });

  final String titulo;
  final String descricao;
  final ImageResourceEnum resourceEnum;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            resourceEnum.resource,
            height: MediaQuery.sizeOf(context).height * .2,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
            child: Text(
              titulo,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
            child: Text(
              descricao,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}

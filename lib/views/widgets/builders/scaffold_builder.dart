import 'package:flutter/material.dart';
import '../../../utilitys/constants/string_constants.dart';


class ScaffoldBuilder extends StatelessWidget {
  const ScaffoldBuilder({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(defaultBackgroundPath),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: body,
        ),
      ),
    );
  }
}


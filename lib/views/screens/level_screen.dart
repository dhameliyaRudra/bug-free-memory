import 'package:flutter/material.dart';
import '../widgets/builders/scaffold_builder.dart';
import '../widgets/image_button/image button.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBuilder(
        body: GridView.builder(
          itemCount: 60,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 80,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return ImageButton(
              imageColor: ImageColor.blue,
              choice: Choice.text,
              text: '${index + 1}',
            );
          },
        ));
  }
}


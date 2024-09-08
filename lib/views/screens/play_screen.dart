import 'package:flutter/material.dart';
import 'package:practice/views/widgets/builders/scaffold_builder.dart';
import 'package:practice/views/widgets/image_button/image%20button.dart';
import 'package:practice/views/widgets/image_button/level_button.dart';

import '../../utilitys/constants/string_constants.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBuilder(
      /// body ae default background laine j avshe...
      body: Column(
        children: [
          /// Row
          /// skip , current puzzle, hint

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageButton(
                imageColor: ImageColor.orange,
                imagePath: skipPath,
              ),
              LevelButton(
                text: 'Level 1',
              ),
              ImageButton(
                imageColor: ImageColor.orange,
                imagePath: hintPath,
              ),
            ],
          ),

          /// question board

          const SizedBox(height: 26),

          Container(
            /// question board ni height width lidheli chhe...
            height: 398,
            width: 336,

            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(questionBgPath),
              ),
            ),
            child: Image.asset(
              'assets/question_cards/1.png',
              height: 300,
              width: 197,
            ),
          ),

          /// input box

          const SizedBox(height: 26),

          Image.asset(
            inputPath,
            height: 56,
            width: 329,
          ),

          /// digit grid view

          const SizedBox(height: 10),

          GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
            ),
            itemBuilder: (context, index) {
              /// aa ImageButton ae class create kryo chhe te chhe
              return ImageButton(
                imageColor: ImageColor.orange,
                choice: Choice.text,
                textColor: Colors.black,
                fontSize: 28,
                text: '${(index + 1) % 10}',
              );
            },
          ),

          /// submit

          const SizedBox(height: 26),

          const LevelButton(
            text: 'Submit',
          ),
        ],
      ),
    );
  }
}

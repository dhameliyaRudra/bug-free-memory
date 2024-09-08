/// (1)
library;

import 'package:flutter/material.dart';

import '../../../utilitys/constants/string_constants.dart';

// import 'package:flutter/material.dart';
//
// class ImageButton extends StatelessWidget {
//   const ImageButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(),
//         ),
//       ),
//       child: Center(child: ),
//     );
//   }
// }

// /// (2)
//
// import 'package:flutter/material.dart';
// import 'package:math_puzzle_game/utilitys/constants/string_constant.dart';
//
// enum ImageColor { blue, orange }
//
// class ImageButton extends StatelessWidget {
//   const ImageButton({
//     super.key,
//     required this.imageColor,
//     this.imagePath = '',
//   });
//
//   final ImageColor imageColor;
//   final String imagePath;
//
//   @override
//   Widget build(BuildContext context) {
//     String imagePath =
//         imageColor == ImageColor.blue ? blueButtonPath : orangeButtonPath;
//
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(imagePath),
//         ),
//       ),
//       // child: Center(child:),
//     );
//   }
// }

/// (3)

// import 'package:flutter/material.dart';
// import 'package:math_puzzle_game/utilitys/constants/string_constant.dart';
//
// enum ImageColor { blue, orange }
//
// enum ChildType { image, text }
//
// class ImageButton extends StatelessWidget {
//   const ImageButton({
//     super.key,
//     required this.imageColor,
//     this.childType = ChildType.image,
//     this.imagePath = '',
//     this.text = '',
//   });
//
//   final ImageColor imageColor;
//   final String imagePath;
//   final ChildType childType;
//   final String text;
//
//   @override
//   Widget build(BuildContext context) {
//     String imagePath =
//         imageColor == ImageColor.blue ? blueButtonPath : orangeButtonPath;
//
//     /// child ---> image or text
//     /// childType ---> image or text both in one type
//
//     Widget? child;
//
//     if (childType == ChildType.image) {
//       child = Image.asset(imagePath);
//     } else {
//       child = Text(text);
//     }
//
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(imagePath),
//         ),
//       ),
//       // child: Center(child:),
//     );
//   }
// }

/// (4)

enum ImageColor { blue, orange }

enum Choice { image, text }

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
    required this.imageColor,
    this.choice = Choice.image,
    this.imagePath = '',
    this.text = '',
    this.height = 46,
    this.width = 44,
    this.fontSize = 24,
    this.textColor = Colors.white,

    /// aa assert ae error lavva mate chhe in console screen ke jo apde text ke image no path no aapyo hoy to console screen ma error show kre...
  }) : assert(choice == Choice.text && text != '' ||
            choice == Choice.image && imagePath != '');

  /// choices that means image or text ae bev ni choices chhe...
  final Choice choice;
  final String text;
  final ImageColor imageColor;
  final String imagePath;
  final double height;
  final double width;
  final double fontSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    String imagePath =
        imageColor == ImageColor.blue ? blueButtonPath : orangeButtonPath;

    Widget? choice;

    if (Choice.image == choice) {
      choice = Image.asset(imagePath);
    } else {
      choice = Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      );
    }

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
        ),
      ),
      child: Center(child: choice),
    );
  }
}

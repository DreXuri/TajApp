
// import 'package:flutter/material.dart';
// import 'package:todoapp/general/utils/assets_constant.dart';

// class Background extends StatelessWidget {
//   final Color color;
//   const Background({super.key, required this.color});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: color,
//       child: Opacity(
//         opacity: 0.9,
//         child: Image.asset(
//           Assets.boardoneImage,
//           fit: BoxFit.fill,
//         ),
//         // 'assets/boardone.png', fit: BoxFit.fill),
//       ),
//     );
//   }
// }

  import 'package:flutter/material.dart';
import 'package:todoapp/general/utils/assets_constant.dart';

BoxDecoration bachgroundWiget() {
    return const BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.bgImage)));
  }
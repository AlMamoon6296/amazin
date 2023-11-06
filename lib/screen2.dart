// import 'package:flutter/material.dart';

// class ShowDescription extends StatelessWidget {
//   final List<Map<String, dynamic>> receivedList;

//   ShowDescription(
//       {Key? key,
//       required this.receivedList,
//       required int currentIndex,
//       required void Function(int index) onDelete})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Text(receivedList[currentIndex]['deal']),
//           Text(receivedList[currentIndex]['title']),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ShowDescription extends StatelessWidget {
  final List<Map<String, dynamic>> receivedList;
  final int currentIndex;
  final void Function(int index) onDelete;

  ShowDescription({
    Key? key,
    required this.receivedList,
    required this.currentIndex,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset(receivedList[currentIndex]['image']),
            Text(receivedList[currentIndex]['tile']),
          ],
        ),
      ),
    );
  }
}

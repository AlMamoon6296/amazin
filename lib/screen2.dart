import 'package:flutter/material.dart';

class ShowDescription extends StatelessWidget {
  final List<Map<String, dynamic>> receivedList;

  ShowDescription({Key? key, required this.receivedList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: receivedList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(receivedList[index]['image']),

              //Text(receivedList[index]['deal']),
              //Text(receivedList[index]['festival']),
              Text(receivedList[index]['tile']),
            ],
          );
        },
      ),
    );
  }
}

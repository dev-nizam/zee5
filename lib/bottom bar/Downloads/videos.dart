import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle
            ),
          )
        ],
      ),
    );
  }
}
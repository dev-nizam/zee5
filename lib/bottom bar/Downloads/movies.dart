import 'package:flutter/material.dart';

class MoviesD extends StatelessWidget {
  const MoviesD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle
            ),
          )
        ],
      ),
    );
  }
}
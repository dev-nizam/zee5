import 'package:flutter/material.dart';

class Shows extends StatelessWidget {
  const Shows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(image: AssetImage("asset/image/download/d.png")),
              shape: BoxShape.circle
            ),
          )
        ],
      ),
    );
  }
}

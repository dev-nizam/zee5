import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue,
    child: ListView(
      //shrinkWrap: true,
      children: [
        Container(height: 500,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage("asset/image/HomeImage/download.jpg") )
                    )
                  ),

                ],
              )
            ],
          ),
        )

      ],

    ),);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
      child: ListView(
        //shrinkWrap: true,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .25,
            color: Colors.red,
            child: PageView.builder(
              itemCount: Images.length,
              itemBuilder: (ctx, index) {
                return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Images[index]),
                            fit: BoxFit.fill)));
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  final List Images = [
    "asset/image/HomeImage/download.jpg",
    "asset/image/HomeImage/maxresdefault.jpg",
    "asset/image/HomeImage/maxresdefault (1).jpg",
  ];
}

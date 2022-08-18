import 'package:flutter/material.dart';

class ShotContainer extends StatelessWidget {
   ShotContainer({Key? key, required this.img}) : super(key: key);
final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(

            height: MediaQuery.of(context).size.height * .2,
            width: 100,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(img,),fit: BoxFit.fill
              ),
            ),

          ),
        ],
      ),
    );
  }
}

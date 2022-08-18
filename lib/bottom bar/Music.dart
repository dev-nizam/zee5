import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(


      height: MediaQuery.of(context).size.height ,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(

        image: DecorationImage(
            image: AssetImage("asset/image/appbar/457769-coming-soon-sign-text-coming-soon-748x499 (1).jpg"),fit:BoxFit.fill
        ),
      ),

    );
  }
}

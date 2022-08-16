import 'package:flutter/material.dart';

class MoviesD extends StatelessWidget {
  const MoviesD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70,left: 20),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.brown,
                  image: DecorationImage(image: AssetImage("asset/image/download/d.png")),
                  shape: BoxShape.circle
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text("LOOK FOR THIS ICON TO DOWNLOAD AND WATCH MOVIES,",style: TextStyle(color: Colors.white),),
                Text("SHOWS AND VIDEOS OFFLINE,",style: TextStyle(color: Colors.white),),

              ],
            ),
          ),
          FlatButton(onPressed: (){}, child: Text("Browse to Download"),color: Colors.purple,)

        ],
      ),
    );
  }
}

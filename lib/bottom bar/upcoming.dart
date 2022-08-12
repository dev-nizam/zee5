import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
   Upcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("UpComing"),
        actions: [
          FlatButton(onPressed: (){}, child:Text("BUYPLAN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),color: Colors.purple,shape: StadiumBorder() )
        ],
      ),
      body: Container(
        height:MediaQuery.of(context).size.height ,
        child: ListView(
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
                          fit: BoxFit.fill)),


            );
          },

        ),
        ),],
        ),
      ),
    );
  }
  final List Images = [
    "asset/image/HomeImage/download.jpg",
    // "asset/image/HomeImage/maxresdefault.jpg",
    // "asset/image/HomeImage/maxresdefault (1).jpg",
  ];
}

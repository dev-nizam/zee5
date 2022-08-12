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
                Text("releasing on date",style: TextStyle(color: Colors.white),),
                Text("Durang|Trailer"),
                Container(
                  height: 100,
                  child: Text("Story: Slow-witted but an eternal optimist, Laal Singh Chaddha (Aamir Khan) stumbles through life, thinking to himself — should you write your own destiny or float freely like a feather going wherever life takes you? Is life a question of choices, matter of chances or the symphony of both? Directed by Advait Chandan, the film is a Hindi adaptation of Robert Zemeckis’ 1994 Oscar winning film ‘Forrest Gump’, starring Tom Hanks."),
                )


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

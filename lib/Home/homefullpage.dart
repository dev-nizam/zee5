import 'package:flutter/material.dart';

class Homefullpage extends StatefulWidget {
  const Homefullpage({Key? key}) : super(key: key);

  @override
  State<Homefullpage> createState() => _HomefullpageState();
}

class _HomefullpageState extends State<Homefullpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(


        height: MediaQuery.of(context).size.height*.6 ,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(

        image: DecorationImage(
        image: AssetImage("asset/image/appbar/457769-coming-soon-sign-text-coming-soon-748x499 (1).jpg"),fit:BoxFit.fill
        ),
        ),
            ),Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name And Details",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 30,
                ),
                Text("Story: Slow-witted but an eternal optimist, Laal Singh Chaddha (Aamir Khan) stumbles through life, thinking to himself — should you write your own destiny or float freely like a feather going wherever life takes you? Is life a question of choices, matter of chances or the symphony of both? Directed by Advait Chandan, the film is a Hindi adaptation of Robert Zemeckis’ 1994 Oscar winning film ‘Forrest Gump’, starring Tom Hanks",style: TextStyle(color: Colors.white),),

              ],
            )

          ],
        ),
      ),
    );
  }
}

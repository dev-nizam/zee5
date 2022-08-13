import 'package:flutter/material.dart';
import 'package:zees/widgets/Uppage.dart';

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
          FlatButton(
              onPressed: () {},
              child: Text(
                "BUYPLAN",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.purple,
              shape: StadiumBorder())
        ],
      ),
      body:ListView(
        children: [
          UpPage(ReleasingDate: 'releasing on date', Image: "asset/image/HomeImage/download.jpg", Details:                 "Story: Slow-witted but an eternal optimist, Laal Singh Chaddha (Aamir Khan) stumbles through life, thinking to himself — should you write your own destiny or float freely like a feather going wherever life takes you? Is life a question of choices, matter of chances or the symphony of both? Directed by Advait Chandan, the film is a Hindi adaptation of Robert Zemeckis’ 1994 Oscar winning film ‘Forrest Gump’, starring Tom Hanks.",
             type: 'Durang|Trailer', model: 'Romance.Thriller.Suspense.Crime.U/A13+.Hindi',),
          UpPage(ReleasingDate: 'releasing on date', Image: "asset/image/HomeImage/maxresdefault.jpg", Details:                 "Story: Slow-witted but an eternal optimist, Laal Singh Chaddha (Aamir Khan) stumbles through life, thinking to himself — should you write your own destiny or float freely like a feather going wherever life takes you? Is life a question of choices, matter of chances or the symphony of both? Directed by Advait Chandan, the film is a Hindi adaptation of Robert Zemeckis’ 1994 Oscar winning film ‘Forrest Gump’, starring Tom Hanks.",
            type: 'Durang|Trailer', model: 'Romance.Thriller.Suspense.Crime.U/A13+.Hindi',),
        ],
      ),

    );
  }
  // final String Images =    "asset/image/HomeImage/download.jpg";
  // "asset/image/HomeImage/maxresdefault.jpg",
  // "asset/image/HomeImage/maxresdefault (1).jpg",

}

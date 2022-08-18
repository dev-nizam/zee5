import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zees/widgets/Textcategories.dart';
import 'package:zees/widgets/shotContainer.dart';

class Premium extends StatefulWidget {
  const Premium({Key? key}) : super(key: key);

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final List<Widget> imgList = [
      Container(

        height: MediaQuery.of(context).size.height * .5,
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(

            image: DecorationImage(
                image: AssetImage("asset/image/tvShows/download.jpg"),fit:BoxFit.fill)),
      ),
      Container(


        height: MediaQuery.of(context).size.height * .5,
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage("asset/image/tvShows/images (1).jpg"),fit:BoxFit.fill
          ),
        ),
      ),
      Container(

        height: MediaQuery.of(context).size.height * .5,
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage("asset/image/tvShows/images (2).jpg"),fit:BoxFit.fill
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .28,
              width: double.infinity,
              child: Column(children: [
                Expanded(
                  child: CarouselSlider(
                    items: imgList,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 3.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.purple
                                : Colors.white)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ]),
            ),Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Zee keralam Shows",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                  Spacer(),
                  TextButton(onPressed: (){}, child: Text("More >"))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ShotContainer(img: "asset/image/tvShows/programpic/download.jpg"),
                  ShotContainer(img: "asset/image/tvShows/programpic/images (1).jpg"),
                  ShotContainer(img: "asset/image/tvShows/programpic/images (2).jpg"),
                  ShotContainer(img: "asset/image/tvShows/programpic/images (3).jpg"),
                  ShotContainer(img: "asset/image/tvShows/programpic/images (4).jpg"),
                ],
              ),
            ),
            TextCategories(name: "Young Romantics"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ShotContainer(img: "asset/image/tvShows/programpic/download.jpg"),
                  ShotContainer(img: "asset/image/tvShows/programpic/images (1).jpg"),
                  ShotContainer(img: "asset/image/tvShows/programpic/images (2).jpg"),
                  ShotContainer(img: "asset/image/tvShows/programpic/images (3).jpg"),
                  ShotContainer(img: "asset/image/tvShows/programpic/images (4).jpg"),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

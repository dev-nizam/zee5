import 'package:flutter/material.dart';
import 'package:zees/bottom%20bar/Music.dart';
import 'package:zees/tabbarpages/HomePage.dart';
import 'package:zees/tabbarpages/eduauraa.dart';
import 'package:zees/tabbarpages/live.dart';
import 'package:zees/tabbarpages/movies.dart';
import 'package:zees/tabbarpages/news.dart';
import 'package:zees/tabbarpages/premium.dart';
import 'package:zees/tabbarpages/tvshows.dart';
import 'package:zees/tabbarpages/webseries.dart';

class BottomHome extends StatelessWidget {
  const BottomHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            print("Clicked1");
          },
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset("asset/image/appbar/Zee5-official-logo.jpeg"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                onTap: () {
                  print("Clicked2");
                },
                child: Icon(
                  Icons.search,
                  size: 30,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 10),
            child: GestureDetector(
              onTap: () {
                print("Clicked3");
              },
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(
                      "asset/image/appbar/images.png",
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 1,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundImage: AssetImage(
                        "asset/image/appbar/download.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          tabs: [
            Tab(
              text: "Home",
            ),
            Tab(
              text: "TV Shows",
            ),
            Tab(
              text: "Movies",
            ),
            Tab(
              text: "Premium",
            ),
            Tab(
              text: "News",
            ),
            Tab(
              text: "Eduauraa",
            ),
            Tab(
              text: "Web Series",
            ),
            Tab(
              text: "Live TV",
            ),
            Tab(
              text: "Music",
            ),
          ],
        ),
      ),
      backgroundColor: Colors.purple,
      body: TabBarView(
        children: [
          HomePage(),
          TvShows(),
          Movies(),
          Premium(),
          News(),
          Eduauraa(),
          WebSeries(),
          Live(),
          Music(),
        ],
      ),
    );
  }
}

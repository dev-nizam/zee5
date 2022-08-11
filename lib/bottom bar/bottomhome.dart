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
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.black,
      title:  TabBar(
      isScrollable: true,
      tabs: [
        Tab(text: "Home",),
        Tab(text: "TV Shows",),
        Tab(text: "Movies",),
        Tab(text: "Premium",),
        Tab(text: "News",),
        Tab(text: "Eduauraa",),
        Tab(text: "Web Series",),
        Tab(text: "Live TV",),
        Tab(text: "Music",),
      ],
    ),),
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

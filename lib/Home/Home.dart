import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zees/bottom%20bar/Hipishorts.dart';
import 'package:zees/bottom%20bar/bottomhome.dart';
import 'package:zees/bottom%20bar/downloads.dart';
import 'package:zees/bottom%20bar/upcoming.dart';
import 'package:zees/tabbarpages/HomePage.dart';
import 'package:zees/tabbarpages/eduauraa.dart';
import 'package:zees/tabbarpages/live.dart';
import 'package:zees/tabbarpages/movies.dart';
import 'package:zees/tabbarpages/music.dart';
import 'package:zees/tabbarpages/news.dart';
import 'package:zees/tabbarpages/premium.dart';
import 'package:zees/tabbarpages/tvshows.dart';
import 'package:zees/tabbarpages/webseries.dart';

class ZeesHome extends StatefulWidget {
  const ZeesHome({Key? key}) : super(key: key);

  @override
  State<ZeesHome> createState() => _ZeesHomeState();
}

int currentIndex = 0;

class _ZeesHomeState extends State<ZeesHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 9,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: currentIndex,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.upcoming),
                label: 'Upcoming',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.filter_hdr),
                label: 'Hipi Shorts',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download_outlined),
                label: 'Downloads',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.queue_music_sharp),
                  label: 'Music',
                  backgroundColor: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }

  final pages = [
    BottomHome(),
    Upcoming(),
    HipiShorts(),
    Downloads(),
    Music(),
  ];
}

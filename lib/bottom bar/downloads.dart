import 'package:flutter/material.dart';
import 'package:zees/bottom%20bar/Downloads/Shows.dart';
import 'package:zees/bottom%20bar/Downloads/movies.dart';
import 'package:zees/bottom%20bar/Downloads/videos.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const TabBar(
              tabs: [
                Tab(text: 'Show',),
                Tab(text: 'Movies',),
                Tab(text: 'Videos',),
              ],
            ),

          ),
          body: const TabBarView(
            children: [
              Shows(),
             MoviesD(),
              Videos()
            ],
          ),
        ),
      ),
    );
  }
}

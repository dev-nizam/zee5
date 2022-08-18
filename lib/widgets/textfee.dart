import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      Padding(
        padding: const EdgeInsets.all(30),
        child: TextField(style: TextStyle(
          color: Colors.white
        ),
          decoration: InputDecoration(
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(20),
             ),
            hintText: 'Enter a search term',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white,
                

              )
            )
          ),
        ),
      ),
    );
  }
}

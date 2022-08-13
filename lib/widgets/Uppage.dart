import 'package:flutter/material.dart';

class UpPage extends StatelessWidget {
   UpPage({Key? key, required this.Image, required this.ReleasingDate, required this.type, required this.Details, required this.model}) : super(key: key);

   final String Image;
   final String ReleasingDate;
   final String type;
   final String Details;
   final String model;
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height*.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(Image),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            ReleasingDate,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            type,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height:170,
            // MediaQuery.of(context).size.height,
            child: Text(
              Details,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            model,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

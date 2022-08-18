import 'package:flutter/material.dart';

class TextCategories extends StatelessWidget {
   TextCategories({Key? key, required this.name}) : super(key: key);
final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
          Spacer(),
          TextButton(onPressed: (){}, child: Text("More >"))
        ],
      ),
    );
  }
}

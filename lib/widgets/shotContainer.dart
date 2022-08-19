import 'package:flutter/material.dart';
import 'package:zees/Home/homefullpage.dart';

class ShotContainer extends StatelessWidget {
   ShotContainer({Key? key, required this.img}) : super(key: key);
final String img;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext ctx,int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Homefullpage()));
                },
                child: Container(

                  height: MediaQuery.of(context).size.height * .15,
                  width: 100,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(img,),fit: BoxFit.fill
                    ),
                  ),

                ),
              ),
            );
          }),
    );
  }
}

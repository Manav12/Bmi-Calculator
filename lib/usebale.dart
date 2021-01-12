import 'package:flutter/material.dart';

class Useable extends StatelessWidget {
  Useable({ @required this.colour,this.child,this.onpress});
   final Color colour;
   final Widget child;
   final Function onpress;
  @override
  Widget build(BuildContext context) {
   return  GestureDetector(
      onTap: onpress,
       child: Container( 
       child: child,
      
      margin: EdgeInsets.all(15),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color:colour,
             ),
       
      
    ),);
  }
}

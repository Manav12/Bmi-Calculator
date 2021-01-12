import 'package:flutter/material.dart';

class Icondat extends StatelessWidget {
    
    Icondat({this.icons,this.label});
    
    final IconData icons;
    final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                
                
                 Icon(
                 icons,
                 size: 80,
                 color: Color(0xffFFFFFF),)
                 ,
                 SizedBox(
                   height: 15,
                  
                 ),
                 Text(label,
                 style: TextStyle(
                   fontSize: 18,
                   color: Color(0xffFDFFFF)
                 ),)
               ],
             );
  }
}
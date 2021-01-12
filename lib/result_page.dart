import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'usebale.dart';

class Resultpage extends StatelessWidget {

  Resultpage({this.bmiresult, this.resulttext,this.interpitation});

  final String bmiresult;
  final String resulttext;
  final String interpitation;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Calculator"),
      ),
      body:Column(
        
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      
      
      Expanded(
        
        child: Container( 
          padding: EdgeInsets.all(15),
          alignment: Alignment.bottomLeft,
          
          child:
       Text("Your Result",style: 
        TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),)
     
      ),
      ),
      Expanded(
        
        flex:5,
        child: Useable(colour: KAcolour,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text( 
            resulttext.toUpperCase(),
            
          style: TextStyle(
            color: Colors.green,
            fontSize: 40,
            fontWeight: FontWeight.bold,            

          ),),
          Text( bmiresult.toUpperCase(),
          style: TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),),
          Text(interpitation.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
          
            fontSize: 22,
          ),)
        ],

        ),
        ),

      

      ),
 
 GestureDetector( 
         
         onTap: (){
           Navigator.pop(context);
         },
           
     
      child:  Container(
         
         color:Colors.pink,
         margin: EdgeInsets.only(top:10),
         child: Center(
           child: Text("Re-Calculate"),
         ),
         width: double.infinity,
         height: 70,
         
         
       )
       ),
      

    ],

    
  

      )
    );
  }
}  
    
    
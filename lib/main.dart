



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'usebale.dart';
import 'icon_content.dart';
import 'result_page.dart';
import 'Calculator_Brain.dart';

const KAcolour = Color(0xff101427);
const KBinactive= Color(0xff1D1F33);
const KNumbersize = TextStyle(
                   fontSize: 30,
                fontWeight: FontWeight.w900);

enum Gender{
  male,
  female,
}

void main() => runApp(Bmi());


class Bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith( 
 primaryColor: Color(0xff090C22),
        scaffoldBackgroundColor: 
         Color(0xff090C22),

      ),
      routes: {
        '/first': (context) => Resultpage(),
      },
       home: Inputpage(),

    );
  }
}

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
   Gender selectedgender;
   int Value=180;
   int weight = 60;
   int age = 20;
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     appBar:  AppBar( 
        centerTitle: true,
     title: Text('BMI Calculator',
             ),),

       body: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
        
     Expanded(
       child: Row(
         children: <Widget>[
           Expanded( 
             
             child: Useable( 
               onpress: (){
                 setState(() {
                   selectedgender=Gender.male;
                 });
               },
             colour:  selectedgender == Gender.male ? KAcolour: KBinactive,
             child:Icondat(
             icons: FontAwesomeIcons.mars,
             label: "Male",  
             ) ),),
           
           Expanded( 
             child:Useable(
               onpress: (){
                 setState(() {
                   selectedgender=Gender.female;
                 });
               },
             colour: selectedgender == Gender.female ? KAcolour: KBinactive,
             child: Icondat(
              icons: FontAwesomeIcons.venus,
              label: "female", 
             ),
             ),
             ),
         ],
     )),
           
        
       

       Expanded(child: Useable(
         colour: KAcolour,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("Height",
             style: TextStyle(
                fontSize: 18,
                   color: Color(0xffFDFFFF)
                 
             ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.baseline,
               textBaseline: TextBaseline.alphabetic,
               children: <Widget>[
                 Text(
                   Value.toString(),
                 style: KNumbersize,

                 ),
                 Text("Cm",
                 style: KNumbersize,
                 )
               ],
             ),
             SliderTheme(
                data: SliderTheme.of(context) .copyWith(
                 
                  activeTrackColor: Colors.pink,
                  inactiveTrackColor: Colors.white,
                  
                   overlayColor: Colors.lightBlue,
                    
                  
                  thumbShape: RoundSliderOverlayShape(overlayRadius: 10),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30),

               ),
            child:  Slider(
               value: Value.toDouble(),
               min: 120,
               max: 220,
              
               
               
               onChanged: (double newvalue){
              setState(() {
                Value= newvalue.toInt();
              });

               },

             ),),
           ],
         ),
         )
       ),

       Expanded(child: Row(
        children: <Widget>[
       Expanded(child:Useable(
         colour: KAcolour,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('Weight',
             style:TextStyle(
                fontSize: 18,
                   color: Color(0xffFDFFFF) ,
             ),),
             Text(
               weight.toString(),
               style: KNumbersize,
             ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
               
               
             FloatingActionButton(
               heroTag: 'btn4',
               onPressed: (){
                 setState(() {
                 weight--;
                 });
               },
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
               backgroundColor: Color(0xFF4C4F5E),
               child: Icon(Icons.remove, color: Colors.white,
               
               ),),
               SizedBox( width: 10, ),

               FloatingActionButton(
                 heroTag: 'btn3',
                 onPressed: (){
                   setState(() {
                       weight++;
                   });
                 
                 },
               
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
               backgroundColor: Color(0xFF4C4F5E),
               child: Icon(Icons.add, color: Colors.white,
               ),

               
               ),],),

           ],
         ),
         
         ),
         ),
       Expanded(child: Useable(
         colour: KAcolour,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Age',
         style: TextStyle(
            fontSize: 18,
                   color: Color(0xffFDFFFF) ,
          ),
        ),
        Text(
          age.toString(),
          style: KNumbersize,
         
        ), 

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
          
        
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: (){
              setState(() {
                age--;
              });
            },
            
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
               backgroundColor: Color(0xFF4C4F5E),
            child: Icon(Icons.remove, color: Colors.white,),
            ),
            SizedBox(width:10),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: (){
                setState(() {
                  age++;
                });
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
               backgroundColor: Color(0xFF4C4F5E),
            child: Icon(Icons.add, color: Colors.white,),
            ),
            ],
            ),
      ],

         ),
         
         ),

        ),
         ],
          
        ),
       ),
       GestureDetector( 
         
         onTap: (){
           CalculateBrain calc = CalculateBrain(weight: weight,height: Value);
           

           Navigator.push(context, MaterialPageRoute(
             builder: (context)=>Resultpage(
              bmiresult: calc.Calculate(),
              resulttext: calc.Getresult(),
              interpitation: calc.Interpetation(),

             ),
             ),
             );
         },
           
     
      child:  Container(
         
         color:Colors.pink,
         margin: EdgeInsets.only(top:10),
         child: Center(
           child: Text("Calculate Your BMI"),
         ),
         width: double.infinity,
         height: 70,
         
         
       )
       ),
       ],
       ),
       );
 }
}


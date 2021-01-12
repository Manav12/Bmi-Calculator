import 'dart:math';
class CalculateBrain {
  CalculateBrain({this.weight,this.height});

  final  int height;
  final int weight;
double _bmi;

String Calculate(){

_bmi = weight/pow(height/100, 2);
return _bmi.toStringAsFixed(1);

}

String Getresult(){
  if(_bmi > 24.9){
    return ' Overweight';
  }  
  else if(_bmi>18.5){
    return ' Normal Weight';
  }
  else {
    return ' underweight';
  } 
}

String Interpetation(){

  if(_bmi > 24.9){
    return 'You are Overweight';
  }  
  else if(_bmi>18.5){
    return 'Your have a Normal Weight';
  }
  else {
    return 'You are underweight';
  } 
}


}
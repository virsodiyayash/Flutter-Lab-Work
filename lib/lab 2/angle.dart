import 'dart:io';

void main(){

  print('Enter the hour : ');
  int hour = int.parse(stdin.readLineSync()!);

  print('Enter the minute : ');
  int minute = int.parse(stdin.readLineSync()!);

  double angle = ( 30 * hour ) - (5.5 * minute);

  if(angle >= 0){
    stdout.write('The angle between hour and minute is : ${angle}');
  }

  else{
    angle = angle + 360;
    stdout.write('The angle between hour and minute is : ${angle}');
  }

}
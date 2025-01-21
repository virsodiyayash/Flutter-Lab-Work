import "dart:io";

void findInterest(double principleAmount , double rate , double time){

    double interest = (principleAmount * rate * time) / 100;

    print("The interest for given details is $interest");

}

void main() {

  print("Enter principle amount : ");
  double principleAmount = double.parse(stdin.readLineSync()!);

  print("Enter rate : ");
  double rate = double.parse(stdin.readLineSync()!);

  print("Enter time : ");
  double time = double.parse(stdin.readLineSync()!);

  findInterest(principleAmount, rate, time);
}
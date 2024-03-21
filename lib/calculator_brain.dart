import 'package:flutter/material.dart';
import 'dart:math';
class CalculatorBrain{
  final int height;
  final int weight;
  CalculatorBrain({required this.height,required this.weight});
  double _bmi=0.0;
  String calculateBMI()
  {
    _bmi=weight/pow(height, weight);
    return _bmi.toStringAsFixed(1);
  }
String getResult()
{
  if (_bmi>25){
    return 'Overweight';
  }
  else if (_bmi>18.5)
    {
      return 'Normal';
    }
  else {
    return 'Underweight';
  }
}
String getInterpretetion()
{

  if (_bmi>25){
    return 'You have a higher than normal body weight, you need to exercise more';
  }
  else if (_bmi>18.5)
  {
    return 'You have a normal body weight which is perfect, Good Job!';
  }
  else {
    return 'You have a lower body weight, It means that you need to eat more';
  }
}
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_card.dart';
import 'bottombutton.dart';
import 'calculator_brain.dart';
class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  const ResultPage({super.key, required this.bmiResult,required this.interpretation,required this.resultText});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget> [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.topLeft,

              child: Text('Your Result',
              style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
            onPress: (){

            },
            colour:kActiveColourCard ,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(),
                    style: kResultTextStyle,),
                    Text(bmiResult,
                    style: kBMITextStyle,),
                    Text(interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,),


                  ],
                ),
          ),),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, BottomTitle: 'Re-Calculate'),
        ],
      ),

    ));
  }
}

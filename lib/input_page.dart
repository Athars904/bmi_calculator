import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';
import 'constants.dart';
import 'result_page.dart';
import 'bottombutton.dart';
import 'roundiconbutton.dart';
import 'calculator_brain.dart';
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  const InputPage({super.key}); // Define the constructor

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height=180;
  int weight=60;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender=Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kActiveColourCard
                          : kInactiveCardColour,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',

                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender=Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kActiveColourCard
                          : kInactiveCardColour,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Expanded(
              child: Expanded(
                child: ReusableCard(
                  onPress: (){},
                  colour: kActiveColourCard,
                  cardChild:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Height',
                      style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kNumberStyle,
                          ),
                          Text('cm'
                          ,style: TextStyle(
                              fontSize: 20.0,
                            ),),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTickMarkColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30.0,
                          ),

                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newValue){
                          setState(() {
                             height=newValue.round();
                          });

                        }),
                      )
                    ],

                    
                  ),
                ),
              ),
            ),
             Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: (){

                      },
                      colour: kActiveColourCard,
                      cardChild:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGHT',
                          style: kLabelTextStyle,),
                          Text(weight.toString(),
                          style: kNumberStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(onPress: (){
                                setState(() {
                                  weight--;
                                });
                              }, Icons: FontAwesomeIcons.minus),
                              SizedBox(
                                width: 7.0,
                              ),

                              RoundIconButton(onPress: (){
                                setState(() {
                                  weight++;
                                });
                              }, Icons: FontAwesomeIcons.plus)
                              
                            ],
                          )


                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){

                      },
                      colour: kActiveColourCard,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE',
                            style: kLabelTextStyle,),
                          Text(age.toString(),
                            style: kNumberStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(onPress: (){
                                setState(() {
                                  age--;
                                });
                              }, Icons: FontAwesomeIcons.minus),
                              SizedBox(
                                width: 7.0,
                              ),

                              RoundIconButton(onPress: (){
                                setState(() {
                                  age++;
                                });
                              }, Icons: FontAwesomeIcons.plus)

                            ],
                          )


                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onTap: (){
                CalculatorBrain calc=CalculatorBrain(height: height, weight: weight);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                  interpretation: calc.getInterpretetion(),
                )));
              },
              BottomTitle: 'Calculate',
            ),
          ],
        ),
      ),
    );
  }
}


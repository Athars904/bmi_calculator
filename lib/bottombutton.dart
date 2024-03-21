import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,required this.onTap,required this.BottomTitle
  });
  final Function onTap;
  final String BottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        child: Center(
            child:
            Text(BottomTitle,
              style: kLargeTextStyle,)),
        color: const Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 75.0,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
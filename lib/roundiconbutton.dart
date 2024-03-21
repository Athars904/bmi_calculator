import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPress;
  final IconData Icons;

  const RoundIconButton({Key? key, required this.onPress, required this.Icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress as void Function()?,
      child: Icon(Icons),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
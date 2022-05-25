import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  late final void Function()? onTap;
  late final String buttonTitle;

  BottomButton(this.onTap, this.buttonTitle);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )),
        height: bottomContainerHeight,
        color: bottomContainerColor,
        margin: const EdgeInsets.only(top: 15.0),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.bottomButtonLabel,
    required this.onPress,
  }) : super(key: key);

  final String bottomButtonLabel;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 80.0,
        width: double.infinity,
        color: const Color(0xFFFF21B2),
        child: Center(
          child: Text(
            bottomButtonLabel,
            style: kLabelTextStyle,
          ),
        ),
      ),
      onTap: onPress,
    );
  }
}

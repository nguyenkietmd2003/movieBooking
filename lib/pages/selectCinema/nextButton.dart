import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final VoidCallback ontap;
  const NextButton({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.lightBlue,
        ),
        child: const Icon(
          Icons.navigate_next,
          size: 30,
        ),
      ),
    );
  }
}

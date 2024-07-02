import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.size,
    required this.content,
  });

  final Size size;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.height / 10,
          child: Center(
            child: Text(
              content ?? "null",
              style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20,
                // align center
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 16, top: 4),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ],
    );
  }
}

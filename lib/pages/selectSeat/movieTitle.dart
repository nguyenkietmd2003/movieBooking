import 'package:flutter/cupertino.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24, top: 8),
          child: const Text(
            'Ralph Breaks the Internet',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4, left: 24),
          child: const Text(
            'FX Sudirman XXI',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

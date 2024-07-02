import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height / 4,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

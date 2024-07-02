import 'package:flutter/cupertino.dart';
import 'package:movie/pages/homePage/homePage.dart';

class Caster extends StatelessWidget {
  const Caster({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies
            .map((e) => Builder(
                  builder: (context) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 4),
                          child: Container(
                            width: size.width / 4.5,
                            height: size.height / 8,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Text(
                          e.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    );
                  },
                ))
            .toList(),
      ),
    );
  }
}

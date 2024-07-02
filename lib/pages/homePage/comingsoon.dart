import 'package:flutter/material.dart';
import 'package:movie/pages/homePage/homePage.dart';
import 'package:movie/pages/selectCinema/selectCinamaPage.dart';
import 'package:movie/pages/detailPage/detailPage.dart';
import 'package:movie/pages/homePage/homePage.dart';
import 'package:movie/pages/selectCinema/selectCinamaPage.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        children: movies
            .map((e) => Builder(
                  builder: (context) {
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SelectCinemaPage()),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          child: Image.network(e.image),
                        ),
                      ),
                    );
                  },
                ))
            .toList(),
      ),
    );
  }
}

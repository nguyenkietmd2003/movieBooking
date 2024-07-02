import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie/pages/homePage/homePage.dart';
import 'package:movie/pages/detailPage/detailPage.dart';
import 'package:movie/pages/homePage/homePage.dart';

class SliderCarousel extends StatelessWidget {
  const SliderCarousel({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: movies
            .map((e) => Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MovieDetailPage()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: size.width,
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 24),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(e.image))),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.blue.withOpacity(0.1),
                                    Colors.blue.withOpacity(0.2)
                                  ],
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: size.width,
                                  padding:
                                      const EdgeInsets.only(bottom: 8, left: 8),
                                  child: Text(
                                    e.title,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 8, bottom: 8),
                                  child: const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 3,
                                        ),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 3,
                                        ),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 3,
                                        ),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 3,
                                        ),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 3,
                                        ),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Text(
                                        '(5.0)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ))
            .toList(),
        options: CarouselOptions(autoPlay: true, enlargeCenterPage: true));
  }
}

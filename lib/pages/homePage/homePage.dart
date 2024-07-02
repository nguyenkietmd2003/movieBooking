import 'package:flutter/material.dart';
import 'package:movie/pages/homePage/comingsoon.dart';
import 'package:movie/pages/homePage/homeHeader.dart';
import 'package:movie/pages/homePage/listCategory.dart';
import 'package:movie/pages/homePage/promo.dart';
import 'package:movie/pages/homePage/searchBar.dart';
import 'package:movie/pages/homePage/slider.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

////////////////////////////////////////////////////////////////  DATA JSON //////////////////////////////////////////////////////////////////
final List<String> genres = [
  'All',
  'Action',
  'Drama',
  'Honor',
  'Romance',
  'Fantasy'
];

class Movie {
  late String title;
  late String image;
  late String description;

  Movie({
    required this.title,
    required this.image,
    required this.description,
  });
}

final List<Movie> movies = [
  Movie(
    title: 'Inception',
    image:
        'https://movienew.cybersoft.edu.vn/hinhanh/dat-rung-phuong-nam_gp01.jpg',
    description:
        'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.',
  ),
  Movie(
    title: 'The Dark Knight',
    image:
        'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg',
    description:
        'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.',
  ),
  Movie(
    title: 'Interstellar',
    image:
        'https://movienew.cybersoft.edu.vn/hinhanh/tam-ve-den-thien-duong_gp01.png',
    description:
        'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
  ),
];

final List<dynamic> _movies = [
  {
    'title': 'Black Widow',
    'image':
        'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg',
    'description':
        'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.'
  },
  {
    'title': 'Black Widow',
    'image':
        'https://movienew.cybersoft.edu.vn/hinhanh/tam-ve-den-thien-duong_gp01.png',
    'description':
        'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.'
  },
  {
    'title': 'Black Widow',
    'image':
        'https://movienew.cybersoft.edu.vn/hinhanh/dat-rung-phuong-nam_gp01.jpg',
    'description':
        'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham.'
  },
];

/////////////////////////////////////////////////////////////////////////////////////////////////////////

class _HomepageState extends State<Homepage> {
  int current = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(size: size),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: size.height * 0.7,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      _movies[current]['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    child: SizedBox(
                      width: size.width,
                      child: Column(
                        children: [
                          CarouselSlider(
                            carouselController: carouselController,
                            options: CarouselOptions(
                              height: 450.0,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.7,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  current = index;
                                });
                              },
                            ),
                            items: _movies.map((movie) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: size.width * 0.8,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 140,
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Image.network(
                                            movie['image'],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Text(
                                          movie['title'],
                                          style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            movie['description'],
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade400,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: List.generate(5, (index) {
                                            return const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 20,
                                            );
                                          }),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text(
                'Now Playing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SliderCarousel(size: size),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text(
                'Coming Soon',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const ComingSoon(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text(
                'Promo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Promo(size: size),
            Promo(size: size),
            Promo(size: size),
          ],
        ),
      ),
    );
  }
}

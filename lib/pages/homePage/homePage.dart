import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/pages/homePage/comingsoon.dart';
import 'package:movie/pages/homePage/homeHeader.dart';
import 'package:movie/pages/homePage/listCategory.dart';
import 'package:movie/pages/homePage/promo.dart';
import 'package:movie/pages/homePage/searchBar.dart';
import 'package:movie/pages/homePage/slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

//
//
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
        'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg',
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
        'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg',
    description:
        'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.',
  ),
];

////////////////////////////////////////////////////////////////////////////////////////////////`//////////////////////////////// //////////////////////////////////////////////////////////////////
//
//
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(size: size),
            searchBar(size: size),
            Category(size: size),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text('Now Playing'),
            ),
            SliderCarousel(size: size),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text('Coming soon'),
            ),
            const ComingSoon(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text('Promo'),
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

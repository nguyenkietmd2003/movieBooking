import 'package:flutter/material.dart';
import 'package:movie/pages/OrderSuccess/orderSuccess.dart';
import 'package:movie/pages/selectCinema/customHeader.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomHeader(size: size, content: "CheckOut Movie"),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(
              vertical: 24,
            ),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.grey,
              width: 1,
            ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width / 2.5,
                  alignment: Alignment.centerLeft,
                  child: Image.network(
                    'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg',
                    fit: BoxFit.cover,
                    scale: 1.2,
                  ),
                ),
                MovieInfo(size: size)
              ],
            ),
          ),
          BuildPriceTag('ID Order', '22081238'),
          BuildPriceTag('Cinema', 'FX Surdiman XXI'),
          BuildPriceTag('Date & Time', 'Sun May 22, 16 : 40'),
          BuildPriceTag('Seat Number', 'D7, D8 , D9'),
          BuildPriceTag('Price', 'Rp 50.000 x 3'),
          BuildPriceTag('Total', '150.000 VND'),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.grey,
              width: 1,
            ))),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '200.00 VND',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderSuccess(),
                    ),
                  );
                },
                child: Container(
                  height: size.height / 16,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Thanh Toán',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }

  Container BuildPriceTag(String content, String price) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            price,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8, bottom: 8),
          width: size.width,
          child: const Text(
            'Ralph Break The Internet',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 8, bottom: 8),
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
              Text('(5.0)')
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 8, bottom: 8),
          width: size.width,
          child: const Text('Action & adventure, Comedy'),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 8,
            bottom: 8,
          ),
          width: size.width,
          child: const Text('1h41min'),
        )
      ],
    ));
  }
}

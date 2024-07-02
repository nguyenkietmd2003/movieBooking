import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/mainPage.dart';
import 'package:movie/pages/bookingHistory/bookingHistory.dart';
import 'package:movie/pages/homePage/homePage.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/orderSuccess.png',
                height: 250,
              ),
              const Text(
                'Success!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text('Your Order Will Be Completed'),
              const Text('Thanks for Your Order'),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        width: 2,
                      )),
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 30, right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Mainpage(
                          initialIndex: 2,
                        );
                      }));
                    },
                    child: const Text('Vé Của Tôi'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Mainpage();
                  }));
                },
                child: Container(
                  child: const Text(
                    'Quay lai trang chu !',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

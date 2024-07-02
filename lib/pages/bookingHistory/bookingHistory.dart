import 'package:flutter/material.dart';
import 'package:movie/pages/bookingHistory/detailBookingHistory.dart';
import 'package:movie/pages/selectCinema/customHeader.dart';

class BookHistoryPage extends StatelessWidget {
  const BookHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          SizedBox(
            height: size.height / 10,
            child: const Center(
              child: Text(
                "Lịch Sử Đặt Vé",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                CardHistoryOrder(context),
                CardHistoryOrder(context),
                CardHistoryOrder(context),
                CardHistoryOrder(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card CardHistoryOrder(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DetailBookingHistory();
          }));
        },
        contentPadding: const EdgeInsets.all(16.0),
        leading: Image.asset(
          'assets/images/orderSuccess.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: const Text(
          'Black Patterns',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        subtitle: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1h41m',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Movies description',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
      ),
    );
  }
}

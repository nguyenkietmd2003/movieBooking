import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/pages/checkoutPage/checkoutPage.dart';
import 'package:movie/pages/selectSeat/arrowBack.dart';
import 'package:movie/pages/selectSeat/movieTitle.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final List<String> seatNumber = [
      'A',
      'B',
      'C',
      'D',
      'E',
    ];
    final List<String> seatRow = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10'
    ];
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ArrowBack(),
          const Padding(
            padding: EdgeInsets.only(left: 100),
            child: MovieTitle(),
          ),
          // seat status
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuildSeatStatusBar(Colors.grey, 'Available'),
                BuildSeatStatusBar(Colors.red, 'Booked'),
                BuildSeatStatusBar(Colors.lightBlue, 'Your Seat'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: seatRow
                    .map((row) => Builder(builder: (context) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: seatNumber
                                .map((number) => Builder(builder: (context) {
                                      return GestureDetector(
                                        onTap: () {},
                                        child: ToggleButton(
                                          child: Text(row + number),
                                        ),
                                      );
                                    }))
                                .toList(),
                          );
                        }))
                    .toList(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Screen',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.red),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "150.000 VND",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const CheckOutPage();
                    }));
                  },
                  child: Container(
                    height: size.height / 16,
                    width: size.width / 3,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      "Book Ticket",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Row BuildSeatStatusBar(Color color, String content) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            content ?? 'null',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 54,
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.grey,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}

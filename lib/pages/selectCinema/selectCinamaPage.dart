import 'package:flutter/material.dart';
import 'package:movie/pages/selectCinema/customHeader.dart';
import 'package:movie/pages/selectCinema/nextButton.dart';
import 'package:movie/pages/selectSeat/selectSeatPage.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> days = ['Mon', 'Sat', 'Wes', 'Sat'];
    final List<String> times = ['1', '2', '3', '4'];

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomHeader(
              size: size,
              content: 'Ralph Breaks the \n Internet',
            ),
            const SizedBox(
              height: 40,
            ),
            BuildTitle('Choose Date'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: days
                    .map((e) => Builder(builder: (context) {
                          return buildDateWidget(size, e, days);
                        }))
                    .toList(),
              ),
            ),
            BuildTitle('Central Park CGV'),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 16),
              height: size.height / 15,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return _buildTimesWidget(size, times, index);
                },
                itemCount: times.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            BuildTitle('FX Sudirman XXI'),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 16),
              height: size.height / 15,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return _buildTimesWidget(size, times, index);
                },
                itemCount: times.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            BuildTitle('Kelapa Gading IMAX'),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 16),
              height: size.height / 15,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return _buildTimesWidget(size, times, index);
                },
                itemCount: times.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            NextButton(
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SelectSeatPage();
                }));
              },
            )
          ],
        ),
      ),
    );
  }

  Container buildDateWidget(Size size, String e, List<String> days) {
    return Container(
      height: size.height / 8,
      width: size.width / 5,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            e,
            style: const TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text((20 + days.indexOf(e)).toString()),
          )
        ],
      ),
    );
  }

  Container _buildTimesWidget(Size size, List<String> times, int index) {
    return Container(
      margin: const EdgeInsets.only(left: 24),
      width: size.width / 4,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        times[index],
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Container BuildTitle(String content) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        content,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/mainPage.dart';
import 'package:movie/pages/detailPage/arrowBack.dart';
import 'package:movie/pages/detailPage/background.dart';
import 'package:movie/pages/detailPage/caster.dart';
import 'package:movie/pages/detailPage/trailler.dart';
import 'package:movie/pages/homePage/homePage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie/pages/selectCinema/selectCinamaPage.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackgroundWidget(size: size),
            const ArrowBack(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                    top: size.height / 6.5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width / 2.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://movienew.cybersoft.edu.vn/hinhanh/nobita-va-ban-giao-huong-dia-cau_gp09.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 90,
                              ),
                              const Text(
                                'Ralph Break The Internet',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: List.generate(5, (index) {
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  );
                                }),
                              ),
                              const Text('(5.0)',
                                  style: TextStyle(fontSize: 12)),
                              const SizedBox(height: 8),
                              const Text(
                                'Action & adventure, Comedy',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '1h 41min',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SelectCinemaPage();
                      }));
                    },
                    icon: const Icon(Icons.local_activity, color: Colors.white),
                    label: const Text('Đặt Vé'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height - 120,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        alignment: Alignment.center,
                        width: size.width,
                        child: TabBar(
                          tabs: const [
                            Tab(
                              text: 'About Movie',
                            ),
                            Tab(
                              text: 'Trailers',
                            ),
                          ],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.black,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          labelPadding: EdgeInsets.zero,
                          dividerColor: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    buildTitle('Mô Tả'),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      child: Text(
                                        "Doraemon: Nobita và bản giao hưởng Địa Cầu là bộ phim điện ảnh thứ 43 trong loạt phim điện ảnh Doraemon. Bộ phim được đạo diễn bởi Imai Kazuaki, người cũng đã thực hiện hai phần phim trước đó là Nobita và đảo giấu vàng và Nobita và những bạn khủng long mới. Utsumi Teruko sẽ đảm nhận phần biên kịch cho bộ phim. ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    buildTitle('Diễn Viên'),
                                    Caster(size: size),
                                  ],
                                ),
                              ),
                            ),
                            const SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Trailer()],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        content,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}

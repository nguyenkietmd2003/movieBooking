import 'package:flutter/material.dart';

class DetailBookingHistory extends StatelessWidget {
  const DetailBookingHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết vé'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/orderSuccess.png',
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ralph Breaks the Internet',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          Text('4.9'),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text('Phiêu lưu, hài hước'),
                      SizedBox(height: 8),
                      Text('1h 41min'),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 32),
            _buildInfoRow('Mã ID:', '22088875'),
            _buildInfoRow('Rạp:', 'FX Sudirman XXI'),
            _buildInfoRow('Ngày và giờ:', 'Sun May 22, 16:40'),
            _buildInfoRow('Số ghế:', 'D7,D8,D9'),
            _buildInfoRow('Số lượng:', '50.000 x 3'),
            _buildInfoRow('Tổng thanh toán:', '150.000 VND'),
            _buildInfoRow('Giảm giá:', '0 VND'),
            _buildInfoRow('Còn lại:', '150.000 VND'),
            const Divider(height: 32),
            Center(
              child: Image.asset(
                'assets/images/qr.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'ID Order\n22081996',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}

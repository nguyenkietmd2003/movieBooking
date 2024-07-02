import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/mainPage.dart';
import 'package:movie/pages/account/detailAccount.dart';
import 'package:movie/pages/bookingHistory/bookingHistory.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildProfileHeader(),
          _buildMenuItem(
            icon: Icons.account_circle,
            title: 'Thông tin Tài khoản',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AccountDetailPage();
              }));
            },
          ),
          _buildMenuItem(
            icon: Icons.lock,
            title: 'Đổi mật khẩu',
            onTap: () {
              // Handle tap event for Đổi mật khẩu
              print('Tapped Đổi mật khẩu');
            },
          ),
          _buildMenuItem(
            icon: Icons.vpn_key,
            title: 'Cài đặt mật mã thanh toán',
            onTap: () {
              // Handle tap event for Cài đặt mật mã thanh toán
              print('Tapped Cài đặt mật mã thanh toán');
            },
          ),
          _buildMenuItem(
            icon: Icons.card_membership,
            title: 'Thẻ thành viên',
            onTap: () {
              // Handle tap event for Thẻ thành viên
              print('Tapped Thẻ thành viên');
            },
          ),
          _buildMenuItem(
            icon: Icons.attach_money,
            title: 'Điểm',
            onTap: () {
              // Handle tap event for Điểm
              print('Tapped Điểm');
            },
          ),
          _buildMenuItem(
            icon: Icons.card_giftcard,
            title: 'Thẻ Q.Tặng | Voucher | Coupon',
            onTap: () {
              // Handle tap event for Thẻ Q.Tặng | Voucher | Coupon
              print('Tapped Thẻ Q.Tặng | Voucher | Coupon');
            },
          ),
          _buildMenuItem(
            icon: Icons.history,
            title: 'Lịch sử Giao dịch',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Mainpage(
                  initialIndex: 1,
                );
              }));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      color: Colors.grey[300],
      padding: const EdgeInsets.all(16.0),
      child: const Row(
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
                'assets/images/avata.png'), // Add your avatar image in assets folder
          ),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Nguyen Kiet',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
              Row(
                children: <Widget>[
                  Icon(Icons.camera_alt, size: 16.0),
                  Text(
                    'MEMBER',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.red),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}

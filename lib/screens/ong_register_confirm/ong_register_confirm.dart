import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/models/ong.dart';
import 'package:utu/screens/ong_register_confirm/widget/ong_register_confirm_banner.dart';
import 'package:utu/screens/ong_register_confirm/widget/ong_register_confirm_body.dart';
import 'package:utu/screens/update_account_ong_screen/update_account_ong.dart';

class OngRegisterConfirmPage extends StatefulWidget {
  final Ong ong;
  OngRegisterConfirmPage(this.ong);

  @override
  _OngRegisterConfirmPageState createState() =>
      _OngRegisterConfirmPageState(ong);
}

class _OngRegisterConfirmPageState extends State<OngRegisterConfirmPage> {
  final Ong ong;
  _OngRegisterConfirmPageState(this.ong);
  int currentlyIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentlyIndex = index;
    });

    if (currentlyIndex == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UpdateOngPage(ong)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OngRegisterConfirmBanner(),
            OngRegisterConfirmBody(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentlyIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackgroundColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Image.asset('assets/icons/home.png', width: 25),
        ),
        BottomNavigationBarItem(
          label: 'user',
          icon: Image.asset('assets/icons/user.png', width: 25),
        ),
      ],
    );
  }
}

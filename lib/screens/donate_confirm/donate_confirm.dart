import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/screens/donate_confirm/widget/confirm_informations.dart';
import 'package:utu/screens/donate_confirm/widget/top_bar_confirm.dart';
import 'package:utu/screens/home/donor_home.dart';
import 'package:utu/screens/update_account_donnor/update_account_donnor.dart';

class DonateConfirmScreen extends StatefulWidget {
  const DonateConfirmScreen({super.key});

  @override
  _DonateConfirmScreenState createState() => _DonateConfirmScreenState();
}

class _DonateConfirmScreenState extends State<DonateConfirmScreen> {
  int currentlyIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentlyIndex = index;
    });

    if (currentlyIndex == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const DonorHomeScreen()));
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const UpdateDonnorPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TopBarConfirm(),
            ConfirmInformations(),
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
      ],
    );
  }
}

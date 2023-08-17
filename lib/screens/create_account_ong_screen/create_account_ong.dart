import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/screens/create_account_ong_screen/widget/create_account_ong_banner.dart';
import 'package:utu/screens/create_account_ong_screen/widget/create_account_ong_body.dart';

class CreateOngPage extends StatelessWidget {
  const CreateOngPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CreateOngBanner(),
            CreateOngBody(),
          ],
        ),
      ),
    );
  }
}

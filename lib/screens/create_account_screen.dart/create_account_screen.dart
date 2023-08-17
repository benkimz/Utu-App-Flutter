import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/screens/create_account_screen.dart/widget/create_account_banner.dart';
import 'package:utu/screens/create_account_screen.dart/widget/create_account_body.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CreateAccountBanner(),
            CreateAccountBody(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/screens/create_account_donnor_screen.dart/widget/create_donnor_banner.dart';
import 'package:utu/screens/create_account_donnor_screen.dart/widget/create_donnor_body.dart';

class CreateDonnorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CreateDonnorBanner(),
            CreateDonnorBody(),
          ],
        ),
      ),
    );
  }
}

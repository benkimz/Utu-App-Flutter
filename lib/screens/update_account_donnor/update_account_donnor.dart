import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/screens/update_account_donnor/widget/update_account_donnor_banner.dart';
import 'package:utu/screens/update_account_donnor/widget/update_account_donnor_body.dart';

class UpdateDonnorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            UpdateDonnorBanner(),
            UpdateDonnorBody(),
          ],
        ),
      ),
    );
  }
}

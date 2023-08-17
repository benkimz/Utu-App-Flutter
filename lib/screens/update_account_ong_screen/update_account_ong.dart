import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/models/ong.dart';
import 'package:utu/screens/update_account_ong_screen/widget/update_account_ong_banner.dart';
import 'package:utu/screens/update_account_ong_screen/widget/update_account_ong_body.dart';

class UpdateOngPage extends StatefulWidget {
  final Ong ong;
  const UpdateOngPage(this.ong, {super.key});

  @override
  _UpdateOngPageState createState() => _UpdateOngPageState(ong);
}

class _UpdateOngPageState extends State<UpdateOngPage> {
  final Ong ong;
  _UpdateOngPageState(this.ong);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const UpdateOngBanner(),
            UpdateOngBody(ong: ong),
          ],
        ),
      ),
    );
  }
}

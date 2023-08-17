import 'package:flutter/material.dart';
import 'package:utu/models/ong.dart';
import 'package:utu/screens/details/widget/ong_banner.dart';
import 'package:utu/screens/details/widget/ong_description.dart';

class OngDetails extends StatefulWidget {
  final Ong ong;
  const OngDetails(this.ong, {super.key});

  @override
  _OngDetailsState createState() => _OngDetailsState();
}

class _OngDetailsState extends State<OngDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            OngBanner(
              widget.ong,
            ),
            OngDescription(
              widget.ong,
            ),
          ],
        ),
      ),
    );
  }
}

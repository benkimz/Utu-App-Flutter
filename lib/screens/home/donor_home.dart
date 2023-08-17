import 'dart:core';

import 'package:flutter/material.dart';
import 'package:utu/models/ong.dart';
import 'package:utu/screens/home/widget/list_title.dart';
import 'package:utu/screens/home/widget/ong_item.dart';
import 'package:utu/screens/home/widget/top_bar.dart';
import 'package:utu/service/http_service.dart';

class DonorHomeScreen extends StatefulWidget {
  const DonorHomeScreen({super.key});

  @override
  _DonorHomeScreenState createState() => _DonorHomeScreenState();
}

class _DonorHomeScreenState extends State<DonorHomeScreen> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const TopBar(),
              const ListTitle('Lista de ONGs'),
              FutureBuilder(
                  future: httpService.fetchOngs(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Ong>> snapshot) {
                    if (snapshot.hasData) {
                      List<Ong>? posts = snapshot.data;
                      print("tentando montar o componente . . . ");
                      var listView = ListView(
                        children:
                            posts!.map((Ong ong) => OngItem(ong)).toList(),
                      );
                      return Expanded(
                        child: listView,
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

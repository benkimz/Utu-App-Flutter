import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Explore(),
          ],
        ),
      ),
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          const Image(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/images/image3.png"),
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          Positioned(
            top: 40,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const Text(
                  "Explore",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'CentraleSansRegular'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 32,
                          fontFamily: 'CentraleSansRegular',
                          fontWeight: FontWeight.w100),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 20,
                          fontFamily: 'CentraleSansRegular',
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 110),
            height: 300,
            width: 450,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Image.asset("assets/images/slide1.png"),
                Image.asset("assets/images/slide2.png"),
                Image.asset("assets/images/slide3.png")
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 370),
            height: 400,
            width: 400,
            child: ListView(
              children: <Widget>[
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset(
                    "assets/images/ad1.png",
                    width: 65.0,
                  ),
                  title: const Text("Feeding Refugees",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  subtitle: const Text("Garissa",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset(
                    "assets/images/ad2.png",
                    width: 65.0,
                  ),
                  title: const Text("Children Resue",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  subtitle: const Text("Kijabe",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
                ListTile(
                  trailing: const Icon(Icons.more_vert),
                  leading: Image.asset(
                    "assets/images/ad3.png",
                    width: 65.0,
                  ),
                  title: const Text("Free Education For the needy",
                      style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  subtitle: const Text("Kenya",
                      style: TextStyle(
                        fontFamily: "CentraleSansRegular",
                        fontSize: 15,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

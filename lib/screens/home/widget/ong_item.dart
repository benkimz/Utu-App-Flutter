import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';

import 'package:utu/models/ong.dart';
import 'package:utu/screens/details/ong_details.dart';
import 'package:utu/screens/donate/donate.dart';

class OngItem extends StatelessWidget {
  final Ong ong;
  const OngItem(this.ong, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: kDefaultPadding, bottom: kDefaultPadding - 10),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 110,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/images/ngo2.png",
                        fit: BoxFit.cover), //ong.ongImg
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 160,
            width: 200,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 12,
                          left: kDefaultPadding - 8,
                          bottom: kDefaultPadding - 15,
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                ong.ongName,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: kFont,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 220,
                        height: 60,
                        padding: const EdgeInsets.only(
                          left: kDefaultPadding - 8,
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                ong.ongDescription,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: kFont,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 170,
                  padding: const EdgeInsets.only(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(color: kFontLight),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => OngDetails(ong)));
                            },
                            child: const Text('See +',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ))),
                      ),
                      Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kButtonDonatePrimary,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DonateDetails(ong)));
                            },
                            child: const Text('Donate',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18,
                                ))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

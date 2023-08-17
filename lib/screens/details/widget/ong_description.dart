import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/models/ong.dart';

class OngDescription extends StatelessWidget {
  final Ong ong;
  const OngDescription(this.ong, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    bottom: kDefaultPadding - 15,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        ong.ongName,
                        style: const TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: kFont,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 15,
                          bottom: kDefaultPadding - 15,
                        ),
                        child: const Column(
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: kFont,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 15,
                          bottom: kDefaultPadding - 10,
                        ),
                        child: Column(
                          children: [
                            Text(
                              ong.ongDescription,
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: kFont,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: kDefaultPadding - 15,
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'Contacts',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: kFont,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 15,
                          bottom: kDefaultPadding - 15,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.phone,
                              size: 35,
                            ),
                            Text(
                              ong.ongPhone,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 15,
                          bottom: kDefaultPadding - 15,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.email,
                              size: 35,
                            ),
                            Text(
                              ong.ongEmail,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 15,
                          bottom: kDefaultPadding - 15,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.open_in_new,
                              size: 35,
                            ),
                            InkWell(
                              child: Text(
                                ong.ongSite,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
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

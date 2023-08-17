import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/models/ong.dart';
import 'package:utu/screens/donate_confirm/donate_confirm.dart';

class DonateInformations extends StatelessWidget {
  final Ong ong;
  const DonateInformations(this.ong, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    bottom: kDefaultPadding,
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
                          bottom: kDefaultPadding - 5,
                        ),
                        child: const Column(
                          children: [
                            Text(
                              'Choose a way to contribute and make your donation:',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: kFont,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])),
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
                            const Text('Pix:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            Container(
                              padding: const EdgeInsets.only(
                                left: kDefaultPadding - 15,
                              ),
                              child: Row(children: [
                                Text(
                                  ong.ongPix,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ]),
                            )
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
                            const Text('Bank:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            Container(
                              padding: const EdgeInsets.only(
                                left: kDefaultPadding - 15,
                              ),
                              child: Row(children: [
                                Text(
                                  ong.ongBankName,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ]),
                            )
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
                            const Text('Account:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            Container(
                              padding: const EdgeInsets.only(
                                left: kDefaultPadding - 15,
                              ),
                              child: Row(children: [
                                Text(
                                  ong.ongBankAccount,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ]),
                            )
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
                            const Text('Agency:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            Container(
                              padding: const EdgeInsets.only(
                                left: kDefaultPadding - 15,
                              ),
                              child: Row(children: [
                                Text(
                                  ong.ongBankAgency,
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding - 5,
                    ),
                    height: 65,
                    width: 335,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kButtonDonatePrimary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DonateConfirmScreen()));
                      },
                      child: const Text(
                        'Done',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
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

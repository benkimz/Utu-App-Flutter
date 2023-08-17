import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';

class ConfirmInformations extends StatelessWidget {
  const ConfirmInformations({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/confirm.png"),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: kDefaultPadding,
                    top: kDefaultPadding - 5,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Obrigada por ajudar',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: kFont,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: kDefaultPadding - 5,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sua doação foi realizada com sucesso',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: kFont,
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

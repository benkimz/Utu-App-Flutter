import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';

class OngRegisterConfirmBody extends StatelessWidget {
  const OngRegisterConfirmBody({super.key});

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
                Container(
                  padding: const EdgeInsets.only(
                    bottom: kDefaultPadding,
                    top: kDefaultPadding + 100,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Thank you for registering.',
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
                          left: kDefaultPadding + 6,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                'Stay tuned, you will soon receive a donation!',
                                style: TextStyle(
                                  fontSize: 18.0,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

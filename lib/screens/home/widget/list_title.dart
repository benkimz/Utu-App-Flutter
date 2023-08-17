import 'package:flutter/cupertino.dart';
import 'package:utu/constants/constants.dart';

class ListTitle extends StatelessWidget {
  final String leftText;
  const ListTitle(this.leftText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 500,
        padding: const EdgeInsets.only(top: kDefaultPadding, left: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              leftText,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: kFont),
            ),
            Container(
              padding: const EdgeInsets.only(top: kDefaultPadding - 10),
              child: const Text(
                'Escolha uma ONG abaixo para realizar uma doação.',
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 16, color: kFont),
              ),
            ),
          ],
        ));
  }
}

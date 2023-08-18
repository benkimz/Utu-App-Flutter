import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/models/ong.dart';
import 'package:utu/screens/donate/donate.dart';

class OngBanner extends StatelessWidget {
  final Ong ong;
  const OngBanner(this.ong, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 300,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Image.asset(ong.ongImg, fit: BoxFit.fitHeight),
                ),
              ),
              Container(
                height: 20,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: SizedBox(
              height: 50,
              width: 110,
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
                      builder: (context) => DonateDetails(ong)));
                },
                child: const Text(
                  'Donate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 15,
            left: 25,
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                iconSize: 20,
                onPressed: () => Navigator.of(context).pop(false),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

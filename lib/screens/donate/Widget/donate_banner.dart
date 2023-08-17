import 'package:flutter/material.dart';
import 'package:utu/models/ong.dart';

class DonateBanner extends StatelessWidget {
  final Ong ong;
  const DonateBanner(this.ong, {super.key});
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
                  child: Image.asset("assets/images/ngo2.png",
                      fit: BoxFit.fitHeight), //ong.ongImg
                ),
              ),
              Container(
                height: 20,
              ),
            ],
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

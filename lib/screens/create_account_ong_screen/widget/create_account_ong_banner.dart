import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';

class CreateOngBanner extends StatelessWidget {
  const CreateOngBanner({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.42,
          child: Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  left: 100 + kDefaultPadding,
                  right: kDefaultPadding,
                  //top: 10,
                ),
                height: size.height * 0.6,
                decoration: const BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 4.0,
                        offset: Offset(0.0, 0.40))
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 130 + kDefaultPadding,
                  left: kDefaultPadding + 20,
                  bottom: kDefaultPadding,
                  right: kDefaultPadding,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(
                        top: kDefaultPadding - 20,
                        bottom: kDefaultPadding - 10,
                      ),
                      child: const Row(
                        children: <Widget>[
                          Text(
                            'Register an NGO',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Flexible(
                      child: Text(
                        "Fill in the fields below with the NGO's information.",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                padding: const EdgeInsets.only(
                  left: kDefaultPadding + 10,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                  top: kDefaultPadding + 30,
                ),
                child: Row(
                  children: <Widget>[Image.asset("assets/images/appicon.png")],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

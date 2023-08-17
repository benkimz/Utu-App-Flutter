import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/screens/create_account_screen.dart/create_account_screen.dart';
import 'package:utu/screens/home/donor_home.dart';
import 'package:utu/screens/login/login.dart';

class PageContent extends StatelessWidget {
  const PageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/image1.png"),
                fit: BoxFit.cover),
          ),
          child: Container(
              height: 683,
              padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding + 100,
              ),
              child: const Row(
                children: [
                  Flexible(
                    child: Text(
                      'Putting the U in Humanity',
                      style: TextStyle(
                        fontSize: 48.0,
                        color: Colors.blueGrey, //Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Container(
          padding: const EdgeInsets.only(
              top: kDefaultPadding + 10, right: kDefaultPadding),
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Container(
                  child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ],
              ))),
        ),
        Container(
            height: 800,
            padding: const EdgeInsets.only(
              top: kDefaultPadding + 480,
            ),
            child: Column(children: [
              Container(
                padding: const EdgeInsets.only(
                  bottom: kDefaultPadding + 5,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kButtonPrimary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DonorHomeScreen()));
                    },
                    child: const Text(
                      'Start Donating',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CreateAccountPage()));
                    },
                    child: Container(
                        child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Register NGO',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey, //Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ))),
              ),
            ]))
      ],
    ));
  }
}

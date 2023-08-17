import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/models/ong.dart';
import 'package:utu/screens/create_account_ong_screen/create_account_ong.dart';
import 'package:utu/screens/home/donor_home.dart';
import 'package:utu/screens/ong_register_confirm/ong_register_confirm.dart';
import 'package:utu/service/http_service.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({Key? key}) : super(key: key);

  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: kDefaultPadding + 10,
              ),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            bottom: kDefaultPadding - 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'E-mail',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          controller: null,
                          onSaved: (value) => _formData['ongEmail'] = value!,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(
                                left: 23.0, bottom: 16.0, top: 15.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Digite seu E-mail',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: kDefaultPadding,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            bottom: kDefaultPadding - 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Senha',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(
                                left: 23.0, bottom: 16.0, top: 15.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Digite sua senha',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.only(
                  top: kDefaultPadding + 60,
                ),
                height: 130,
                width: 335,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kFormButtonPrimary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    _formKey.currentState!.save();
                    final response =
                        httpService.findOngByEmail(_formData['ongEmail'] ?? '');

                    response
                        .then((value) => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    OngRegisterConfirmPage(value))))
                        .onError((error, stackTrace) => Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (context) => CreateOngPage())));
                  },
                  child: Text(
                    'Login',
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
    );
  }
}

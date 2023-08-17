import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/screens/create_account_ong_screen/create_account_ong.dart';
import 'package:utu/screens/ong_register_confirm/ong_register_confirm.dart';
import 'package:utu/service/http_service.dart';

class CreateAccountBody extends StatefulWidget {
  const CreateAccountBody({Key? key}) : super(key: key);

  @override
  _CreateAccountBodyState createState() => _CreateAccountBodyState();
}

class _CreateAccountBodyState extends State<CreateAccountBody> {
  bool _showPassword1 = false;
  bool _showPassword2 = false;
  String password = '';
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      return Colors.black;
    }

    return Form(
      key: _formKey,
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: kDefaultPadding - 10,
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'E-mail',
                            style: TextStyle(
                              fontSize: 16.0,
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
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Enter your email',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: kDefaultPadding - 10,
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                            left: 23.0, bottom: 16.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Enter your password',
                        suffixIcon: GestureDetector(
                          child: Icon(
                              _showPassword1 == false
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey),
                          onTap: () {
                            setState(() {
                              _showPassword1 = !_showPassword1;
                            });
                          },
                        ),
                      ),
                      obscureText: _showPassword1 == false ? true : false,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: kDefaultPadding - 10,
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Confirm the password',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      controller: null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                            left: 23.0, bottom: 16.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Enter your password again',
                        suffixIcon: GestureDetector(
                          child: Icon(
                              _showPassword2 == false
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey),
                          onTap: () {
                            setState(() {
                              _showPassword2 = !_showPassword2;
                            });
                          },
                        ),
                      ),
                      obscureText: _showPassword2 == false ? true : false,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding,
                ),
                child: Column(
                  children: [
                    Container(
                        child: Container(
                      child: Stack(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                _formKey.currentState!.save();
                                final response = httpService.findOngByEmail(
                                    _formData['ongEmail'] ?? '');

                                response
                                    .then((value) => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OngRegisterConfirmPage(value))))
                                    .onError((error, stackTrace) =>
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const CreateOngPage())));
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  alignment: Alignment.bottomLeft,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        colors: [Colors.blue, Colors.green]),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  width: 335,
                                  height: 56,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Create an account',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

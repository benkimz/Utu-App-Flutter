import 'package:flutter/material.dart';
import 'package:utu/constants/constants.dart';
import 'package:utu/models/ong.dart';
import 'package:utu/screens/ong_register_confirm/ong_register_confirm.dart';
import 'package:utu/service/http_service.dart';

class CreateOngBody extends StatefulWidget {
  const CreateOngBody({Key? key}) : super(key: key);

  @override
  _CreateOngBodyState createState() => _CreateOngBodyState();
}

class _CreateOngBodyState extends State<CreateOngBody> {
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
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: kDefaultPadding - 10,
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (value) => _formData['ongName'] = value!,
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
                        hintText: 'Enter your Name',
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
                            'Address',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (value) => _formData['ongAddress'] = value!,
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
                        hintText: 'Enter your address',
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
                            'Contact',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (value) => _formData['ongPhone'] = value!,
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
                        hintText: 'Enter your contact',
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
                            'Tell us about the NGO',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: Column(children: [
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        onSaved: (value) =>
                            _formData['ongDescription'] = value!,
                        textInputAction: TextInputAction.newline,
                        minLines: 6,
                        maxLines: 6,
                        maxLength: 260,
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
                          hintText: 'Write a brief summary about the NGO',
                        ),
                      ),
                    ]))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding - 20,
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
                            'Site',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (value) => _formData['ongSite'] = value!,
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
                        hintText: 'Enter the website',
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
                        hintText: '"Enter the email',
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
                            'PIX',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (value) => _formData['ongPix'] = value!,
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
                        hintText: 'Enter your PIX',
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
                            'Bank',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (value) => _formData['ongBankName'] = value!,
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
                        hintText: 'Enter your bank',
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
                            'Agency',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (value) => _formData['ongBankAgency'] = value!,
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
                        hintText: 'Enter your agency',
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
                            'Account',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: null,
                      onSaved: (value) => _formData['ongBankAccount'] = value!,
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
                        hintText: 'Enter your account',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding + 5,
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

                                var ong = Ong(
                                  ongName: _formData['ongName'] ?? '',
                                  ongAddress: _formData['ongAddress'] ?? '',
                                  ongPhone: _formData['ongPhone'] ?? '',
                                  ongDescription:
                                      _formData['ongDescription'] ?? '',
                                  ongSite: _formData['ongSite'] ?? '',
                                  ongEmail: _formData['ongEmail'] ?? '',
                                  ongPix: _formData['ongPix'] ?? '',
                                  ongBankName: _formData['ongBankName'] ?? '',
                                  ongBankAgency:
                                      _formData['ongBankAgency'] ?? '',
                                  ongBankAccount:
                                      _formData['ongBankAccount'] ?? '',
                                  ongImg: "assets/images/amigos.png",
                                );

                                final response = httpService.saveOng(ong);

                                response.then((value) => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                        builder: (context) =>
                                            OngRegisterConfirmPage(value))));
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
          ),
        ));
  }
}

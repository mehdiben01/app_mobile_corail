import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Inscription_two extends StatefulWidget {
  const Inscription_two({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _InscriptionTwoState createState() => _InscriptionTwoState();
}

class _InscriptionTwoState extends State<Inscription_two> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController = TextEditingController();
  

    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0C4F87), Color(0xFF005779)],
                stops: [0.1, 0.9],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Align(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border(),
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 10,
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 60, 0),
                              width: 25,
                              height: 25,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset(
                                  'assets/inf.png',
                                  width: 18,
                                  height: 18,
                                ),
                              ),
                            ),
                            Text(
                              'Créer un compte',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF022150),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          validator: (value) {
                            final emailRegExp = RegExp(
                                r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                            if (value == null || value.isEmpty) {
                              return 'Adresse Email *';
                            } else if (!emailRegExp.hasMatch(value)) {
                              return 'Email incorrect';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Adresse Email *',
                            hintText: 'Adresse Email *',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          validator: (value) {
                            final telRegExp = RegExp(r'^[0-9]{10}$');
                            if (value == null || value.isEmpty) {
                              return 'Telephone *';
                            } else if (!telRegExp.hasMatch(value)) {
                              return 'Telephone incorrect';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Telephone *',
                            hintText: 'Telephone *',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          controller: _passwordController,
                          validator: (value) {
                            final mdpRegExp = RegExp(
                                r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
                            if (value == null || value.isEmpty) {
                              return 'Mot de passe *';
                            } else if (!mdpRegExp.hasMatch(value)) {
                              return 'Mot de passe incorrect';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Mot de passe *',
                            hintText: 'Mot de passe *',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          controller: _confirmPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Confirmer le mot de passe *';
                            } else if (value != _passwordController.text) {
                              return 'Les mots de passe ne correspondent pas.';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Confirmer le mot de passe *',
                            hintText: 'Confirmer le mot de passe *',
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => Material(
                                  color: Colors.transparent,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: AlertDialog(
                                      elevation: 0,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      content: Container(
                                        height: 300,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Verification code",
                                              style: TextStyle(
                                                color: Color(0xFF00587a),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0.0, 10.0, 0.0, 30.0),
                                              child: Text(
                                                "Code envoyé par e-mail à Username@gmail.com",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 140, 9.98),
                                              child: Text(
                                                'Numéro OTP',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  height: 2,
                                                  color: Color(0xff344054),
                                                ),
                                              ),
                                            ),
                                            Pinput(
                                              length: 4,
                                              defaultPinTheme: defaultPinTheme,
                                              focusedPinTheme:
                                                  defaultPinTheme.copyWith(
                                                decoration: defaultPinTheme
                                                    .decoration!
                                                    .copyWith(
                                                  border: Border.all(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              onCompleted: (pin) =>
                                                  debugPrint(pin),
                                            ),
                                            const SizedBox(
                                              height: 25.0,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: Color(0xff125b8a),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Text(
                                                'Se connecter à mon compte ',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  height: 2,
                                                  letterSpacing: 1,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            } 
                          },
                          child: Container(
                            height: 54,
                            decoration: BoxDecoration(
                              color: Color(0xff125b8a),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Sauvegarder ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125,
                                  letterSpacing: 0.32,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Center(
                          child: SizedBox(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0.0, 60.0, 0.0),
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.26,
                                    color: Color(0xff2b2b2b),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '*Mentions obligatoires',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575,
                                        letterSpacing: 0.26,
                                        color: Color(0xff2b2b2b),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          '. Corail collecte et traite vos données conformément à la réglementation applicable en matière de protection des données personnelles. Pour en savoir plus, consultez notre charte des données personnelles.',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2575,
                                        letterSpacing: 0.26,
                                        color: Color(0xff2b2b2b),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

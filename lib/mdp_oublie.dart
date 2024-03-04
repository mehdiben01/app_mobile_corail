import 'package:flutter/material.dart';

class Mdp extends StatelessWidget {
  const Mdp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
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
                                margin: EdgeInsets.fromLTRB(0, 1, 40, 0),
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
                                'Mot de passe oublié',
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
                            height: 20.0,
                          ),
                          Positioned(
                            top:
                                20.0,
                            left: 0.0,
                            right: 0.0,
                            child: Center(
                              child: Image.asset(
                                'assets/lock.png',
                                width: 100.0,
                                height: 100.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Mot de passe oublié ?',
                            style: TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Center(
                              child: Text(
                                'Saisissez votre adresse électronique ci-dessous pour recevoir les instructions de réinitialisation du mot de passe',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 11.0,
                                  color: Color(0xff8f8f8f),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Entrez l\'Email/ Telephone';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Email/ Telephone',
                              hintText: 'Email/ Telephone',
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
                            height: 30.0,
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
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                        content: Container(
                                          height: 400,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Positioned(
                                                top:
                                                    0.0, 
                                                left: 0.0,
                                                right: 0.0,
                                                child: Center(
                                                  child: Image.asset(
                                                    'assets/msg.png',
                                                    width: 100.0,
                                                    height: 100.0,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "Nous avons envoyé des instructions de récupération du mot de passe à votre adresse électronique",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0.0, 15.0, 0.0, 15.0),
                                                child: Text(
                                                  "Vous n\'avez pas reçu l\'e-mail ? Vérifiez votre filtre anti-spam ou renvoyez-le",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 25.0,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      40.0, 5.0, 40.0, 5.0),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff125b8a),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  child: Text(
                                                    'Annuler ',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 2,
                                                      letterSpacing: 1,
                                                      color: Color(0xffffffff),
                                                    ),
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
                                  'Continue',
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
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'notification.dart';
import 'include/colors.dart';

class ParrainerPage extends StatefulWidget {
  @override
  _ParrainerPageState createState() => _ParrainerPageState();
}

class _ParrainerPageState extends State<ParrainerPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                color: Color(0xff026990),
                width: screenWidth,
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 80.5),
                      width: double.infinity,
                      height: 38,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 38,
                                      height: 38,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xFFE8EEEE)),
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/flecheg.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Parrainer un ami',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575,
                                        letterSpacing: 1,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NotificationPage(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/alert.png',
                                width: 25,
                                height: 25,
                                color: Couleurs.blanc,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenWidth * 0.1,
                            height: screenWidth * 0.1,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.0637),
                              border: Border.all(
                                color: const Color(0x19ffffff),
                                width: screenWidth * 0.016,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(170, 140, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 30.1,
                            height: 30.1,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.9637),
                              border: Border.all(
                                color: const Color(0x19ffffff),
                                width: screenWidth * 0.06,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: screenWidth / 2 - 20,
                      top: -100,
                      child: Align(
                        child: SizedBox(
                          width: 172,
                          height: 172,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(86),
                              border: Border.all(
                                color: const Color(0x19ffffff),
                                width: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 230, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/ami.png',
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                    width: double.infinity,
                    child: Text(
                      'Bienvenue dans votre cagnotte\nde Parrainage',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.7142857143,
                        letterSpacing: 0.28,
                        color: Color(0xff3e5c89),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Pour continuer ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        height: 1.4615384615,
                        letterSpacing: -0.26,
                        color: Color(0xff27364e),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: TextFormField(
                            validator: (value) {
                              final emailRegExp = RegExp(
                                  r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                              if (value == null || value.isEmpty) {
                                return 'Utilisateur inconnu';
                              } else if (!emailRegExp.hasMatch(value)) {
                                return 'Email incorrect';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Email',
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
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
                            height: 54,
                            decoration: BoxDecoration(
                              color: Color(0xff125b8a),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Connexion',
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

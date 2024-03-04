import 'package:corail/authentification.dart';
import 'package:corail/information.dart';
import 'package:corail/map.dart';
import 'package:corail/parametre.dart';
import 'package:corail/parrainer.dart';
import 'package:corail/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'categorie.dart';
import 'ticket.dart';
import 'notification.dart';
import 'include/footer.dart';
import 'include/colors.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilPage> {
  bool isParrainerClicked = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff026990),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: screenWidth,
                height: 980,
                child: Stack(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 80.5),
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              _buildMainScreen(),
                                        ),
                                      );
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
                                      'Profile',
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
                      padding: EdgeInsets.fromLTRB(150, 730, 0, 0),
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
                      left: screenWidth / 2 - 10,
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
                    Positioned(
                      left: screenWidth / 2 - 300,
                      top: 600,
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
                    Container(
                      width: 250,
                      height: 980,
                      padding: EdgeInsets.fromLTRB(10, 160, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(10, 0, 2, 59),
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          color: Color(0xffd9d9d9),
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 100,
                                        ),
                                        margin:
                                            EdgeInsets.fromLTRB(10, 0, 0, 1),
                                        child: Text(
                                          'Oussama Badri ',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575,
                                            letterSpacing: 0.32,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 16.0),
                                   GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  InformationPage(),
                                            ),
                                          );
                                        },
                                        child :Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    alignment: Alignment.bottomCenter,
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 10, 38),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 13, 1),
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                  'assets/box.png',
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                'Information',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575,
                                                  letterSpacing: 0.200000003,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                     
                                    ),
                                  ),
                                   ),
                                  GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => MapPage(),
                                            ),
                                          );
                                        },
                                        child:Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    alignment: Alignment.bottomCenter,
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child:  Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 10, 38),
                                          width: double.infinity,
                                         
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 13, 1),
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                  'assets/invoice.png',
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                'Où utiliser Corail',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575,
                                                  letterSpacing: 0.200000003,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ParrainerPage(),
                                          ),
                                        );
                                      },
                                      child:Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    alignment: Alignment.bottomCenter,
                                    child:  Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 10, 38),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 13, 1),
                                              width: 30,
                                              height: 30,
                                              child: Image.asset(
                                                'assets/tool.png',
                                                width: 30,
                                                height: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'Parrainer un ami',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575,
                                                letterSpacing: 0.200000003,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ParametrePage(),
                                            ),
                                          );
                                        },
                                        child:Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    alignment: Alignment.bottomCenter,
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child:  Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 10, 38),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 13, 1),
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                  'assets/param.png',
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                'Paramètre',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575,
                                                  letterSpacing: 0.200000003,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SupportPage(),
                                            ),
                                          );
                                        },
                                        child:Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    alignment: Alignment.bottomCenter,
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child:  Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 10, 38),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 13, 1),
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                  'assets/support.png',
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                'Support',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575,
                                                  letterSpacing: 0.200000003,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Authentification(title: 'Corail',),
                                            ),
                                          );
                                        },
                                        child:Container(
                                    margin: EdgeInsets.fromLTRB(40, 160, 0, 11),
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 13, 1),
                                            width: 30,
                                            height: 30,
                                            child: Image.asset(
                                              'assets/logout.png',
                                              width: 30,
                                              height: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Se déconnecter',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2575,
                                              letterSpacing: 0.200000003,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(210, 20, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 30.1,
                                          height: 30.1,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                screenWidth * 0.9637),
                                            border: Border.all(
                                              color: const Color(0x19ffffff),
                                              width: screenWidth * 0.06,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainScreen() {
    return Scaffold(
      body: Stack(
        children: [
          ProfilPage(),
          Footer(),
        ],
      ),
    );
  }
}

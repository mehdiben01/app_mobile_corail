import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'notification.dart';
import 'include/colors.dart';
import 'edit_profil.dart';

class SupportPage extends StatefulWidget {
  @override
  _SupportState createState() => _SupportState();
}

const List<String> langues = <String>['Fr', 'Ang', 'Ar'];

class _SupportState extends State<SupportPage> {


  String dropdownValue = langues.first;
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
                                      'Support',
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
            // ...

            Positioned(
              left: 0,
              top: 190,
              child: Container(
                width: screenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      color: Color(0xFFFBFBFB),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(40, 10, 40, 9),
                            width: 200,
                            height:200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/casque.png'),
                              ),
                            ),
                          ),
                        
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: screenWidth / 2,
                      color: Colors.white,
                      height: 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 4),
                            child: Text(
                              'Support',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                height: 1.2575,
                                letterSpacing: -0.18,
                                color: Color(0xff333333),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                              onTap: () {},
                          child :Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 11.14, 0.05),
                                width: 25.9,
                                height: 25.9,
                                decoration: BoxDecoration(
                                  color: Couleurs.button,
                                  border: Border.all(
                                    color: Couleurs.button,
                                     width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset(
                                  'assets/supp.png',
                                  width: 30.9,
                                  height: 30.9,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0.95, 0, 0),
                                child: Text(
                                  'Centre d\'assistance',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                              onTap: () {},
                          child :Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 11.14, 0.05),
                                width: 25.9,
                                height: 25.9,
                                decoration: BoxDecoration(
                                  color: Couleurs.button,
                                  border: Border.all(
                                    color: Couleurs.button,
                                     width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset(
                                  'assets/supp.png',
                                  width: 30.9,
                                  height: 30.9,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0.95, 0, 0),
                                child: Text(
                                  'Contact',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                          const SizedBox(
                               height: 20,
                          ),
                          GestureDetector(
                              onTap: () {},
                          child :Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 11.14, 0.05),
                                width: 25.9,
                                height: 25.9,
                                decoration: BoxDecoration(
                                  color: Couleurs.button,
                                  border: Border.all(
                                    color: Couleurs.button,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset(
                                  'assets/supp.png',
                                  width: 30.9,
                                  height: 30.9,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0.95, 0, 0),
                                child: Text(
                                  'Équipe et politique de confidentialité',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ),
                          const SizedBox(
                             height: 20,
                          ),
                          GestureDetector(
                              onTap: () {},
                          child :Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 11.14, 0.05),
                                width: 25.9,
                                height: 25.9,
                                decoration: BoxDecoration(
                                  color: Couleurs.button,
                                  border: Border.all(
                                    color: Couleurs.button,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset(
                                  'assets/supp.png',
                                  width: 24.9,
                                  height: 24.9,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0.95, 0, 0),
                                child: Text(
                                  'Licences',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff333333),
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
            ),
          ],
        ),
      ),
    );
  }
}

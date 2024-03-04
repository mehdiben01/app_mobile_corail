import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'notification.dart';
import 'include/colors.dart';
import 'edit_profil.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

const List<String> langues = <String>['Fr', 'Ang', 'Ar'];

class _InformationPageState extends State<InformationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isSwitched = false;

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
                          EdgeInsets.symmetric(horizontal: 24, vertical: 70.5),
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
                                      'Information',
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
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/avatar.png'),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                  child: Text(
                                    'Oussama Badri',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2575,
                                      letterSpacing: -0.18,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(40, 10, 40, 20),
                                  constraints: BoxConstraints(
                                    maxWidth: 200,
                                  ),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Color(0xff828282),
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              'Oussama.badri@gmail.com\n+212 7 87 98 09 08\n',
                                        ),
                                        TextSpan(
                                          text: 'Code client',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5,
                                            letterSpacing: -0.13,
                                            color: Color(0xff00587a),
                                          ),
                                        ),
                                        TextSpan(
                                          text: '  1384-3492',
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
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: screenWidth / 2,
                      height: 700,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 4),
                            child: Text(
                              'Profile',
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
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Porfil_EditPage(),
                                ),
                              );
                            },
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(0, 0, 11.14, 0.05),
                                  width: 25.9,
                                  height: 25.9,
                                  decoration: BoxDecoration(
                                    color: Couleurs.button,
                                    border: Border.all(
                                      color: Couleurs.button,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Image.asset(
                                    'assets/user.png',
                                    width: 15.9,
                                    height: 15.9,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.95, 0, 0),
                                  child: Text(
                                    'Modifier les informations',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      child: Image.asset(
                                        'assets/flechei.png',
                                        width: 25.9,
                                        height: 25.9,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 11.14, 0.05),
                                width: 25.9,
                                height: 25.9,
                                decoration: BoxDecoration(
                                  color: Couleurs.button,
                                  border: Border.all(
                                    color: Couleurs.button,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset(
                                  'assets/alarme.png',
                                  width: 30.9,
                                  height: 30.9,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0.95, 0, 0),
                                child: Text(
                                  'Notifications',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Switch(
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                      });
                                    },
                                    activeColor: Colors.white,
                                    activeTrackColor: Color(0xFFE0E0E0),
                                    inactiveTrackColor: Color(0xFFE0E0E0),
                                    inactiveThumbColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 11.14, 0.05),
                                width: 25.9,
                                height: 25.9,
                                decoration: BoxDecoration(
                                  color: Couleurs.button,
                                  border: Border.all(
                                    color: Couleurs.button,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset(
                                  'assets/i.png',
                                  width: 15.9,
                                  height: 15.9,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0.95, 0, 0),
                                child: Text(
                                  'Les langues',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                    ),
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.grey),
                                    underline: Container(
                                      height: 2,
                                    ),
                                    onChanged: (String? value) {
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: langues
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 11.14, 0.05),
                                width: 25.9,
                                height: 25.9,
                                decoration: BoxDecoration(
                                  color: Couleurs.button,
                                  border: Border.all(
                                    color: Couleurs.button,
                                    width: 5.0,
                                  ),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Image.asset(
                                  'assets/dec.png',
                                  width: 15.9,
                                  height: 15.9,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0.95, 0, 0),
                                child: Text(
                                  'Se déconnecter',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
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

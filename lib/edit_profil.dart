import 'package:corail/edit_mdp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'notification.dart';
import 'include/colors.dart';

class Porfil_EditPage extends StatefulWidget {
  @override
  _Porfil_EditPageState createState() => _Porfil_EditPageState();
}

const List<String> langues = <String>['Fr', 'Ang', 'Ar'];

class _Porfil_EditPageState extends State<Porfil_EditPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isSwitched = false;
  final TextEditingController _passwordController = TextEditingController();
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
                height: 180,
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
                                      'Modifier profile',
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
                     Form(
                      key: _formKey,
                      child:
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: screenWidth / 2,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 4),
                            child: Text(
                              'Modifier Profile',
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
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextFormField(
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
                                labelText: 'Email/ Telephone',
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
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextFormField(
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
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: TextFormField(
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
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Mdp_EditPage(),
                                        ),
                                      );
                                    },
                                    icon: Icon(Icons.arrow_forward_ios),
                                    color: Couleurs.corail,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              height: 54,
                             width: double.infinity, 
                              decoration: BoxDecoration(
                                color: Color(0xff125b8a),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  if (_formKey != null &&
                                      _formKey.currentState != null) {
                                    if (_formKey.currentState!.validate()) {}
                                  }
                                },
                                child: Text(
                                  'Enregistrer les modifications',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125,
                                    letterSpacing: 0.32,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
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

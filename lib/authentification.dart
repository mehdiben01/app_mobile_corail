import 'package:flutter/material.dart';
import 'inscription_one.dart';
import 'mdp_oublie.dart';
import 'include/footer.dart';
import 'profil.dart';

class Authentification extends StatelessWidget {
  const Authentification({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
          Positioned(
            top: 20.0, 
            left: 0.0,
            right: 0.0,
            child: Center(
              child: Image.asset(
                'assets/logo-w.png',
                width: 150.0,
                height: 150.0,
              ),
            ),
          ),
          Positioned(
            top: 90.0, 
            left: 0.0,
            right: 0.0,
            child: Container(
              margin: EdgeInsets.only(left: 100.0, right: 100.0, top: 50.0),
              child: Text(
                'vous permet de garder la trace de tous vos achats.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth > 600 ? 18.0 : 15.0,
                ),
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
                flex: 3,
                child: Container(
                  padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Se connecter',
                          style: TextStyle(
                            fontSize: screenWidth > 600 ? 25.0 : 25.0,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF022150),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45.0, right: 30.0),
                          child: Center(
                            child: Text(
                              'Saisissez le numéro de téléphone avec lequel vous avez créé votre compte',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenWidth > 600 ? 14.0 : 14.0,
                                color: Color(0xFF3e5c89),
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
                              return 'Entrez l\'Email';
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
                        TextFormField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entrez le Mot de passe';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Mot de passe',
                            hintText: 'Entrez le Mot de passe',
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
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Mdp(title: 'Corail'),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                screenWidth > 600 ? 205 : 205, 0.0, 0.0, 0.0),
                            child: Text(
                              'Mot de passe oublié ?\n',
                              style: TextStyle(
                                fontSize: screenWidth > 600 ? 14.0 : 14.0,
                                color: Color(0xff008891),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => _buildMainScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 54,
                            decoration: BoxDecoration(
                              color: Color(0xff125b8a),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Se connecter',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: screenWidth > 600 ? 16 : 16,
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
                          height: 30.0,
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 13,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, 
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, 
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    right: screenWidth > 600 ? 10 : 10,
                                  ),
                                  child: Text(
                                    'Vous n\'avez pas de compte ?',
                                    style: TextStyle(
                                      fontSize: screenWidth > 600 ? 14 : 14,
                                      fontWeight: FontWeight.w400,
                                      height: 1.4285714286,
                                      color: Color(0xff98a2b3),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Inscription(title: 'Corail'),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'S’inscrire',
                                    style: TextStyle(
                                      fontSize: screenWidth > 600 ? 14 : 14,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4285714286,
                                      color: Color(0xff008891),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                            padding: EdgeInsets.fromLTRB(15, 8, 10, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffcbd5e1),
                                  ),
                                ),
                                SizedBox(
                                  width: 17.5,
                                ),
                                Text(
                                  'Ou se connecter avec',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: screenWidth > 600 ? 12 : 12,
                                    fontWeight: FontWeight.w600,
                                    height: 1.3333333333,
                                    color: Color(0xff64748b),
                                  ),
                                ),
                                SizedBox(
                                  width: 17.5,
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                  width: 80,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xffcbd5e1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              screenWidth > 600 ? 20 : 20, 0, 9, 0),
                          height: 56,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0, 0, screenWidth > 600 ? 8 : 8, 0),
                                padding: EdgeInsets.fromLTRB(
                                    screenWidth > 600 ? 39 : 39,
                                    15,
                                    screenWidth > 600 ? 41 : 41,
                                    15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 187, 182, 182)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      height: 20,
                                      child: Image.asset(
                                        'assets/google.png',
                                      ),
                                    ),
                                    Text(
                                      'Google',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: screenWidth > 600 ? 14 : 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1.4285714286,
                                        color: Color(0xff64748b),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0, 0, screenWidth > 600 ? 8 : 4, 0),
                                padding: EdgeInsets.fromLTRB(
                                    screenWidth > 600 ? 41 : 41,
                                    15,
                                    screenWidth > 600 ? 41 : 41,
                                    15),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 187, 182, 182)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      height: 20,
                                      child: Image.asset(
                                        'assets/apple.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'Apple',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: screenWidth > 600 ? 14 : 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1.4285714286,
                                        color: Color(0xff64748b),
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
              ),
            ],
          ),
        ],
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

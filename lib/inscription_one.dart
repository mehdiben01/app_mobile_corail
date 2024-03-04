import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'inscription_two.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<String> list = ['Monsieur', 'Madame', 'Mademoiselle'];
  String civilite = 'Monsieur';

  List<String> villesMaroc = [
    'Casablanca',
    'Rabat',
    'Marrakech',
    'Fès',
    'Tanger',
    'Agadir',
    'Ouarzazate',
    'Meknès',
    'Tétouan',
    'Essaouira',
    'Chefchaouen',
    'El Jadida',
    'Fez-Meknes',
    'Oujda-Angad',
    'Kenitra',
    'Nador',
    'Beni Mellal-Khénifra',
    'Dakhla-Oued Ed-Dahab',
    'Taza-Al Hoceima-Taounate',
    'Laâyoune-Sakia El Hamra',
    'Souss-Massa',
    'Guelmim-Oued Noun',
    'Tadla-Azilal',
    'Marrakech-Safi',
    'Drâa-Tafilalet',
    'Béni Mellal-Khénifra',
  ];
  String ville = 'Casablanca';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('fr', 'FR'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('fr', 'FR'),
      ],
      home: Scaffold(
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
                  width: screenWidth > 600 ? 200 : 150,
                  height: screenWidth > 600 ? 200 : 150,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(screenWidth > 600 ? 100 : 75),
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
                    height: screenWidth > 600 ? 20 : 10,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      screenWidth > 600 ? 30 : 20,
                      screenWidth > 600 ? 30 : 20,
                      screenWidth > 600 ? 30 : 20,
                      screenWidth > 600 ? 25 : 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(screenWidth > 600 ? 40 : 20),
                        topRight: Radius.circular(screenWidth > 600 ? 40 : 20),
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
                                margin: EdgeInsets.fromLTRB(0, 1, 30, 0),
                                width: screenWidth > 600 ? 30 : 25,
                                height: screenWidth > 600 ? 30 : 25,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(
                                    'assets/inf.png',
                                    width: screenWidth > 600 ? 20 : 18,
                                    height: screenWidth > 600 ? 20 : 18,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Créer un compte',
                                    style: TextStyle(
                                      fontSize: screenWidth > 600 ? 25 : 25,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF022150),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenWidth > 600 ? 30.0 : 30.0,
                          ),
                          TextFormField(
                            validator: (value) {
                              final nomRegExp = RegExp(r'^[a-zA-Z ]+$');
                              if (value == null || value.isEmpty) {
                                return 'Nom *';
                              } else if (!nomRegExp.hasMatch(value)) {
                                return 'Nom incorrect';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Nom *',
                              hintText: 'Nom *',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenWidth > 600 ? 15.0 : 15.0,
                          ),
                          TextFormField(
                            validator: (value) {
                              final prenomRegExp = RegExp(r'^[a-zA-Z ]+$');
                              if (value == null || value.isEmpty) {
                                return 'Prenom *';
                              } else if (!prenomRegExp.hasMatch(value)) {
                                return 'Prenom incorrect';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Prenom *',
                              hintText: 'Prenom *',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenWidth > 600 ? 15.0 : 15.0,
                          ),
                          DateTimeField(
                            validator: (value) {
                              if (value == null) {
                                return 'Date de naissance *';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Date de naissance *',
                              hintText: 'Date de naissance *',
                              suffixIcon: Icon(
                                Icons.date_range,
                                color: Colors.grey,
                              ),
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            format: DateFormat("dd/MM/yyyy"),
                            onShowPicker: (context, currentValue) async {
                              return showDatePicker(
                                context: context,
                                initialDate: currentValue ?? DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2101),
                                locale: Locale('fr', 'FR'),
                                builder: (BuildContext context, Widget? child) {
                                  return Theme(
                                    data: ThemeData.light().copyWith(
                                      colorScheme: ColorScheme.light(
                                          primary: Color(0xFF00587A)),
                                      buttonTheme: ButtonThemeData(
                                          textTheme: ButtonTextTheme.primary),
                                    ),
                                    child: child!,
                                  );
                                },
                              );
                            },
                            onChanged: (selectedDate) {
                            },
                          ),
                          SizedBox(
                            height: screenWidth > 600 ? 15.0 : 15.0,
                          ),
                          DropdownButtonFormField<String>(
                            value: civilite,
                            onChanged: (String? newValue) {
                              setState(() {
                                civilite = newValue!;
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Civilité *';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Civilité *',
                              hintText: 'Civilité *',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: screenWidth > 600 ? 15.0 : 15.0,
                          ),
                          DropdownButtonFormField<String>(
                            value: ville,
                            onChanged: (String? newValue) {
                              setState(() {
                                ville = newValue!;
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Veuillez sélectionner une ville';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Ville *',
                              hintText: 'Sélectionnez une ville',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            items: villesMaroc.map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Inscription_two(title: 'Corail'),
                    ),
                  );
                } 
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    screenWidth > 600 ? 325 : 310, 
                    screenWidth > 600 ? 640 : 670.0, 0.0, 0.0),
                height: 60,
                child: Image.asset(
                  'assets/fleche.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

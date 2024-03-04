import 'package:flutter/material.dart';
import 'step_two.dart';
import 'authentification.dart';

class StepOne extends StatelessWidget {
  const StepOne({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF00587A),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth > 600 ? 30.0 : 40.0,
                70.0,
                30.0,
                10.0,
              ),
              child: Text(
                'Tous vos achats sont là !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth > 600 ? 40.0 : 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth > 600 ? 30.0 : 40.0,
                1.0,
                screenWidth > 600 ? 30.0 : 36.0,
                0.0,
              ),
              child: Text(
                'Retrouvez n’importe quel produit acheté ou service payé en un instant. Le ticket dématérialisé peut même vous servir de mémo.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth > 600 ? 20.0 : 17.0,
                  height: 1.7,
                ),
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 1.0, top: 1.0),
              child: Image.asset(
                'assets/achat.png',
                width: screenWidth > 600 ? 600.0 : screenWidth,
                height: screenWidth > 600 ? 600.0 : screenWidth,
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24.0, 0.0, 23.0, 29.0),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: screenWidth > 600 ? 30.0 : 15.0),
                    width: screenWidth > 600 ? 200.0 : 72.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 8.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Color(0x66ffffff),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                width: 24.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Color(0xffffffff),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                width: 8.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Color(0x66ffffff),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                width: 8.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Color(0x66ffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Authentification(title: 'Corail'),
                              ),
                            );
                          },
                          child: Text(
                            'Annuler',
                            style: TextStyle(
                              fontSize: screenWidth > 600 ? 22.0 : 18.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xb2ffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StepTwo(title: 'Corail'),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: screenWidth > 600 ? 30.0 : 15.0),
                      width: screenWidth > 600 ? 58.0 : 48.0,
                      height: screenWidth > 600 ? 58.0 : 48.0,
                      child: Image.asset(
                        'assets/one.png',
                        width: screenWidth > 600 ? 58.0 : 48.0,
                        height: screenWidth > 600 ? 58.0 : 48.0,
                      ),
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

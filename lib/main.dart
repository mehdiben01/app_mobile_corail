import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'step_one.dart';
import 'profil.dart';
import 'include/footer.dart';
import 'package:flutter/services.dart';
void main() {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, 
    ));
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corail',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Corail'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSplashScreen(context),
    );
  }

  Widget _buildSplashScreen(BuildContext context) {
    Color customColor = Color(0xFF00587a);
    double fem = 1.0;

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
          MaterialPageRoute(builder: (context) => const StepOne(title: 'Corail')),
      );
    });

    return Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SpinKitCircle(
                    color: customColor,
                    size: 50.0,
                  ),
                  SizedBox(height: 12.0),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 480.0,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 80 * fem,
                sigmaY: 80 * fem,
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    319 * fem, 0 * fem, 0 * fem, 104 * fem),
                width: 112 * fem,
                height: 112 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200 * fem),
                  color: Color(0xff00587a),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 80 * fem,
                sigmaY: 80 * fem,
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 319 * fem, 104 * fem),
                width: 112 * fem,
                height: 112 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200 * fem),
                  color: Color(0xff00587a),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/corail.png',
              width: 150.0,
              height: 150.0,
            ),
          ),
        ],
      ),
    );
  }


}
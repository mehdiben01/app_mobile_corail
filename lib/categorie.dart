import 'package:corail/notification.dart';
import 'package:flutter/material.dart';
import 'include/colors.dart';

class CategoriePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 0.5),
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
                                border: Border.all(color: Color(0xFFE8EEEE)),
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
                              'Categorie',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 1.2575,
                                letterSpacing: 1,
                                color: Colors.black,
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
                        color: Couleurs.corail,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Positioned(
                    left: 40,
                    top: 70,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 11.72),
                            width: double.infinity,
                            height: 104.63,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.56),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie1,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/t-shirt.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Vêtement',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.55),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(14.23),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie2,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 29.3,
                                              height: 29.3,
                                              child: Image.asset(
                                                'assets/rattle.png',
                                                width: 29.3,
                                                height: 29.3,
                                                color: Couleurs.categorie2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Jouets',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie3,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/baseball.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie3,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Sport',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
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
                          Container(
                            margin: EdgeInsets.only(bottom: 11.72),
                            width: double.infinity,
                            height: 104.63,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.56),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie3,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/perfume.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie3,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Cosmetic',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.55),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(14.23),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie1,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 29.3,
                                              height: 29.3,
                                              child: Image.asset(
                                                'assets/blender.png',
                                                width: 29.3,
                                                height: 29.3,
                                                color: Couleurs.categorie1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Cuisine',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie2,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/camp.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Camp',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
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
                          Container(
                            margin: EdgeInsets.only(bottom: 11.72),
                            width: double.infinity,
                            height: 104.63,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.56),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie1,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/watch.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Montres',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.55),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(14.23),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie2,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 29.3,
                                              height: 29.3,
                                              child: Image.asset(
                                                'assets/santé.png',
                                                width: 29.3,
                                                height: 29.3,
                                                color: Couleurs.categorie2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Santé',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie3,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/lamp.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie3,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Décoration',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
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
                          Container(
                            margin: EdgeInsets.only(bottom: 11.72),
                            width: double.infinity,
                            height: 104.63,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.56),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie3,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/jardin.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie3,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Jardin',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.55),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(14.23),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie1,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 29.3,
                                              height: 29.3,
                                              child: Image.asset(
                                                'assets/electrom.png',
                                                width: 29.3,
                                                height: 29.3,
                                                color: Couleurs.categorie1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Electroménager',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie2,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/outils.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Outils',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
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
                          Container(
                            margin: EdgeInsets.only(bottom: 11.72),
                            width: double.infinity,
                            height: 104.63,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.56),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie1,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/micro.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Music',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 12.55),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(14.23),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie3,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 29.3,
                                              height: 29.3,
                                              child: Image.asset(
                                                'assets/info.png',
                                                width: 29.3,
                                                height: 29.3,
                                                color: Couleurs.categorie3,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Informatique',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(8.3700447083),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0a000000),
                                          offset: Offset(0, 1.6740088463),
                                          blurRadius: 20.0881061554,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(bottom: 11.72),
                                          padding: EdgeInsets.all(13.39),
                                          decoration: BoxDecoration(
                                            color: Couleurs.bg_categorie1,
                                            borderRadius: BorderRadius.circular(
                                                35.991191864),
                                          ),
                                          child: Center(
                                            child: SizedBox(
                                              width: 30.97,
                                              height: 30.97,
                                              child: Image.asset(
                                                'assets/collier.png',
                                                width: 30.97,
                                                height: 30.97,
                                                color: Couleurs.categorie1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Bijoux',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10.0440530777,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575,
                                              color: Color(0xff2b2d30),
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
    );
  }
}

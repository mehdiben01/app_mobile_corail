import 'package:flutter/material.dart';
import 'dart:async';
import 'categorie.dart';
import 'ticket.dart';
import 'notification.dart';
import 'profil.dart';
import 'include/colors.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedContainerIndex = 0;
  int selectedCategoryIndex = 0;
  double xOffset = 0;
  double yOffset = 0;



  List<String> images = [
    'assets/sale.jpg',
    'assets/sale.jpg',
    'assets/sale.jpg',
  ];

  List<List<String>> categoryImages = [
    [
      'assets/zara.png',
      'assets/zara.png',
      'assets/zara.png',
      'assets/zara.png',
      'assets/zara.png',
      'assets/zara.png',
    ],
    [
      'assets/oolutuion.png',
    ],
    [
      'assets/oolutuion.png',
    ],
    [],
    [],
  ];

  @override
  void initState() {
    super.initState();
    startImageAutoChange();
  }

  @override
  void dispose() {
    super.dispose();
    imageAutoChangeTimer?.cancel();
  }

  Timer? imageAutoChangeTimer;

  void startImageAutoChange() {
    const Duration autoChangeDuration = Duration(seconds: 5);
    imageAutoChangeTimer = Timer.periodic(autoChangeDuration, (Timer timer) {
      changeImage((selectedContainerIndex + 1) % images.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;

            return Stack(
              children: [
               SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: screenWidth,
                            height: screenHeight,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(28, 63, 23, 63),
                                    width: screenWidth,
                                    height: 222,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0, -1),
                                        end: Alignment(0, 1),
                                        colors: <Color>[
                                          Color(0xff00587a),
                                          Color(0xff026990)
                                        ],
                                        stops: <double>[0, 1],
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(32),
                                        bottomLeft: Radius.circular(32),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                          Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 2, 59),
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17.5),
                                            color: Color(0xffd9d9d9),
                                          ),
                                        ),
                                        Expanded(
                                          child:  Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 129, 0),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    8, 0, 0, 11),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 1),
                                                      child: Text(
                                                        'Bienvenu',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.2575,
                                                          letterSpacing: 0.24,
                                                          color:
                                                              Color(0xfff5f5f5),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Oussama Badri.👋 ',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1.2575,
                                                        letterSpacing: 0.32,
                                                        color:
                                                            Color(0xffffffff),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: screenWidth * 0.1,
                                                height: screenWidth * 0.1,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          screenWidth * 0.0637),
                                                  border: Border.all(
                                                    color:
                                                        const Color(0x19ffffff),
                                                    width: screenWidth * 0.016,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 0.95, 10, 0),
                                          child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    NotificationPage(),
                                              ),
                                            );
                                          },
                                          child: Opacity(
                                            opacity: 0.8,
                                            child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 58),
                                              width: 27,
                                              height: 27,
                                              child: Image.asset(
                                                'assets/alert.png',
                                                width: 27,
                                                height: 27,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        ),
                                      ],
                                    ),
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
                                          borderRadius:
                                              BorderRadius.circular(86),
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
                                  left: screenWidth * 0.08,
                                  top: 125,
                                  child: GestureDetector(
                                    child: Container(
                                      width: screenWidth * 0.87,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            child: AnimatedSwitcher(
                                              duration:
                                                  Duration(milliseconds: 500),
                                              child: Image.asset(
                                                images[selectedContainerIndex],
                                                key: ValueKey<int>(
                                                    selectedContainerIndex),
                                                width: screenWidth * 0.87,
                                                height: screenWidth * 0.5,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: screenWidth * 0.032),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: screenWidth * 0.04),
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2.5),
                                            ),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  buildClickableContainer(
                                                      0,
                                                      screenWidth * 0.09,
                                                      screenWidth * 0.01),
                                                  SizedBox(
                                                      width:
                                                          screenWidth * 0.03),
                                                  buildClickableContainer(
                                                      1,
                                                      screenWidth * 0.09,
                                                      screenWidth * 0.01),
                                                  SizedBox(
                                                      width:
                                                          screenWidth * 0.03),
                                                  buildClickableContainer(
                                                      2,
                                                      screenWidth * 0.09,
                                                      screenWidth * 0.01),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: screenWidth * 0.08,
                                  top: 330,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: screenWidth,
                                      height: 100,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Sélectionner une catégorie',
                                              style: TextStyle(
                                                fontSize: screenWidth * 0.05,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF00587a),
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                right: screenWidth * 0.14),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        CategoriePage(),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                'Voir plus',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  fontSize: screenWidth * 0.039,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575,
                                                  letterSpacing: 1,
                                                  color: Color(0xff008891),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: screenWidth * 0.08,
                                  top: 410,
                                  child: Container(
                                    width: screenWidth,
                                    height: 50,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          buildCategoryContainer('Vêtement', 0),
                                          SizedBox(width: screenWidth * 0.02),
                                          buildCategoryContainer('Beauté', 1),
                                          SizedBox(width: screenWidth * 0.02),
                                          buildCategoryContainer('Hobby', 2),
                                          SizedBox(width: screenWidth * 0.02),
                                          buildCategoryContainer('Camp', 3),
                                          SizedBox(width: screenWidth * 0.04),
                                          buildCategoryContainer('Sport', 4),
                                          SizedBox(width: screenWidth * 0.1),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: screenWidth * 0.08,
                                  top: 480,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                    width: 401,
                                    height: 97,
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            for (String image in categoryImages[
                                                selectedCategoryIndex])
                                              Container(
                                                margin:
                                                    EdgeInsets.only(right: 10),
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 232, 238, 238)),
                                                  color: Color(0xffffffff),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: SizedBox(
                                                    width: 92,
                                                    height: 97,
                                                    child: Image.asset(
                                                      image,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            SizedBox(width: 50),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: screenWidth * 0.08,
                                  top: 560,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: screenWidth,
                                      height: 100,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Mes tickets',
                                              style: TextStyle(
                                                fontSize: screenWidth * 0.05,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(
                                                right: screenWidth * 0.14),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        TicketPage(),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                'Voir plus',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                   fontSize: screenWidth * 0.039,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575,
                                                  letterSpacing: 1,
                                                  color: Color(0xff008891),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: screenWidth * 0.08,
                                  top: 645,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                    width: 401,
                                    height: 105,
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 12, 0),
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 2.88, 0),
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xffffffff),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x0a000000),
                                                    offset: Offset(0, 2),
                                                    blurRadius: 24,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 7.88, 0),
                                                    width: 83,
                                                    height: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xfff3f5f9),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(6),
                                                        bottomLeft:
                                                            Radius.circular(6),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: SizedBox(
                                                        width: 83,
                                                        height: 95,
                                                        child: Image.asset(
                                                          'assets/zara.png',
                                                          width: 83,
                                                          height: 95,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 11, 0, 12),
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 2.15, 0, 0),
                                                    width: 176.24,
                                                    height: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(0, 0,
                                                                  7.87, 10.04),
                                                          width:
                                                              double.infinity,
                                                          height: 39.35,
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Stack(
                                                                  children: [
                                                                    Positioned(
                                                                      left: 0,
                                                                      top: 0,
                                                                      child:
                                                                          Align(
                                                                        child:
                                                                            SizedBox(
                                                                          child:
                                                                              Text(
                                                                            'Zara Mall',
                                                                            style:
                                                                                TextStyle(
                                                                              fontSize: 12.4437599182,
                                                                              fontWeight: FontWeight.w400,
                                                                              height: 1.399999908,
                                                                              color: Color(0xff000000),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Positioned(
                                                                      left:
                                                                          0.1193847656,
                                                                      top:
                                                                          21.3514404297,
                                                                      child:
                                                                          Align(
                                                                        child:
                                                                            SizedBox(
                                                                          child:
                                                                              Text(
                                                                            '01/12/2023',
                                                                            style:
                                                                                TextStyle(
                                                                              fontSize: 12.4437599182,
                                                                              fontWeight: FontWeight.w400,
                                                                              height: 1.399999908,
                                                                              color: Color(0xff000000),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        1.39,
                                                                        0,
                                                                        0),
                                                                width: 1.81,
                                                                height: 14.52,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/zara.png',
                                                                  width: 1.81,
                                                                  height: 14.52,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(0.12, 0,
                                                                  0, 0),
                                                          child: Text(
                                                            '120.00Dh',
                                                            style: TextStyle(
                                                              fontSize:
                                                                  18.6656398773,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height:
                                                                  1.3999999591,
                                                              color: Color(
                                                                  0xff00587a),
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
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 2.88, 0),
                                              width: 270,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xffffffff),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x0a000000),
                                                    offset: Offset(0, 2),
                                                    blurRadius: 24,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 7.88, 0),
                                                    width: 83,
                                                    height: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xfff3f5f9),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(6),
                                                        bottomLeft:
                                                            Radius.circular(6),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: SizedBox(
                                                        width: 83,
                                                        height: 95,
                                                        child: Image.asset(
                                                          'assets/zara.png',
                                                          width: 83,
                                                          height: 95,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 11, 0, 12),
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 2.15, 0, 0),
                                                    width: 176.24,
                                                    height: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(0, 0,
                                                                  7.87, 10.04),
                                                          width:
                                                              double.infinity,
                                                          height: 39.35,
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Stack(
                                                                  children: [
                                                                    Positioned(
                                                                      left: 0,
                                                                      top: 0,
                                                                      child:
                                                                          Align(
                                                                        child:
                                                                            SizedBox(
                                                                          child:
                                                                              Text(
                                                                            'Carrefour Mall',
                                                                            style:
                                                                                TextStyle(
                                                                              fontSize: 12.4437599182,
                                                                              fontWeight: FontWeight.w400,
                                                                              height: 1.399999908,
                                                                              color: Color(0xff000000),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Positioned(
                                                                      left:
                                                                          0.1193847656,
                                                                      top:
                                                                          21.3514404297,
                                                                      child:
                                                                          Align(
                                                                        child:
                                                                            SizedBox(
                                                                          child:
                                                                              Text(
                                                                            '01/12/2023',
                                                                            style:
                                                                                TextStyle(
                                                                              fontSize: 12.4437599182,
                                                                              fontWeight: FontWeight.w400,
                                                                              height: 1.399999908,
                                                                              color: Color(0xff000000),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        1.39,
                                                                        0,
                                                                        0),
                                                                width: 1.81,
                                                                height: 14.52,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/zara.png',
                                                                  width: 1.81,
                                                                  height: 14.52,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(0.12, 0,
                                                                  0, 0),
                                                          child: Text(
                                                            '320.00Dh',
                                                            style: TextStyle(
                                                              fontSize:
                                                                  18.6656398773,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height:
                                                                  1.3999999591,
                                                              color: Color(
                                                                  0xff00587a),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 50.0,
                                            ),
                                          ],
                                        ),
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
          
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildClickableContainer(int index, double width, double height) {
    return GestureDetector(
      onTap: () {
        changeImage(index);
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.5),
          color: index == selectedContainerIndex
              ? Color(0xff3882cd)
              : Color(0xffe8e8e8),
        ),
      ),
    );
  }

  void changeImage(int newIndex) {
    setState(() {
      selectedContainerIndex = newIndex;
    });
  }

  Widget buildCategoryContainer(String category, int index) {
    return GestureDetector(
      onTap: () {
        changeCategory(index);
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(7, 7, 15, 7),
        width: 150,
        height: double.infinity,
        decoration: BoxDecoration(
          color: selectedCategoryIndex == index
              ? Color(0xff00587a)
              : Color(0xfff3f5f9),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
              width: 36,
              height: 36,
              child: Image.asset(
                'assets/carre.png',
                width: 36,
                height: 36,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.2125,
                  letterSpacing: 0.28,
                  color: selectedCategoryIndex == index
                      ? Color(0xffffffff)
                      : Color(0xff79869f),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changeCategory(int newIndex) {
    setState(() {
      if (newIndex >= 0 && newIndex < categoryImages.length) {
        selectedCategoryIndex = newIndex;
      }
    });
  }
}

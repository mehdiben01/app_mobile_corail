import 'package:corail/notification.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'include/colors.dart';
import 'ticket.dart';

class Detail_TicketPage extends StatefulWidget {
  @override
  _Detail_TicketPageState createState() => _Detail_TicketPageState();
}

class _Detail_TicketPageState extends State<Detail_TicketPage> {
  int selectedContainerIndex = 0;
  int selectedCategoryIndex = 0;

  List<String> images = [
    'assets/sale.jpg',
    'assets/sale.jpg',
    'assets/sale.jpg',
  ];

  List<Ticket> tickets = [
    Ticket(
      category: 'Vêtement',
      itemName: 'Zara Mall',
      imageUrl: 'assets/zara.png',
      date: '01/12/2023',
      price: 120.00,
    ),
    Ticket(
      category: 'Vêtement',
      itemName: 'Zara Mall',
      imageUrl: 'assets/zara.png',
      date: '01/12/2023',
      price: 120.00,
    ),
    Ticket(
      category: 'Vêtement',
      itemName: 'Zara Mall',
      imageUrl: 'assets/zara.png',
      date: '01/12/2023',
      price: 120.00,
    ),
    Ticket(
      category: 'Vêtement',
      itemName: 'Zara Mall',
      imageUrl: 'assets/zara.png',
      date: '01/12/2023',
      price: 120.00,
    ),
    Ticket(
      category: 'Vêtement',
      itemName: 'Zara Mall',
      imageUrl: 'assets/zara.png',
      date: '01/12/2023',
      price: 120.00,
    ),
    Ticket(
      category: 'Vêtement',
      itemName: 'Zara Mall',
      imageUrl: 'assets/zara.png',
      date: '01/12/2023',
      price: 120.00,
    ),
    Ticket(
      category: 'Hobby',
      itemName: 'Hobby',
      imageUrl: 'assets/zara.png',
      date: '01/12/2023',
      price: 120.00,
    ),
  ];
  List<String> categories = ['Vêtement', 'Beauté', 'Hobby', 'Camp', 'Sport'];

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

            return Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: screenWidth,
                    height: 780,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(28, 0, 25, 100),
                            width: screenWidth,
                            height: 300,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
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
                                          child: Container(
                                            width: 38,
                                            height: 38,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xFFE8EEEE)),
                                              color: Color(0xFFFFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                                          builder: (context) =>
                                              NotificationPage(),
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
                        Positioned(
                          left: 70,
                          top: 120,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: screenWidth * 0.13,
                                  height: screenWidth * 0.14,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90),
                                      border: Border.all(
                                        color: const Color(0x19ffffff),
                                        width: 10.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          top: 140,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Actualité',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: screenWidth * 0.08,
                          top: 200,
                          child: GestureDetector(
                            child: Container(
                              width: screenWidth * 0.87,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(9),
                                    child: AnimatedSwitcher(
                                      duration: Duration(milliseconds: 500),
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
                                      borderRadius: BorderRadius.circular(2.5),
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
                                          SizedBox(width: screenWidth * 0.03),
                                          buildClickableContainer(
                                              1,
                                              screenWidth * 0.09,
                                              screenWidth * 0.01),
                                          SizedBox(width: screenWidth * 0.03),
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
                          top: 410,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: screenWidth,
                              height: 100,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Mes tickets Zara',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.05,
                                        fontWeight: FontWeight.w700,
                                        color: Couleurs.noir,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 490, 0, 0),
                          child: CustomScrollView(
                            slivers: <Widget>[
                              SliverToBoxAdapter(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: tickets
                                      .map((ticket) =>
                                          buildTicketContainer(context, ticket))
                                      .toList(),
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

  Widget buildTicketContainer(BuildContext context, Ticket ticket) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: screenWidth * 0.000001),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: screenWidth * 0.01),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        padding: EdgeInsets.fromLTRB(0, 0, 2.88, 0),
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x0a000000),
                              offset: Offset(0, 2),
                              blurRadius: 24,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 7.88, 0),
                              width: 83,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f5f9),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  bottomLeft: Radius.circular(6),
                                ),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    ticket.imageUrl,
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50.35,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Stack(
                                            children: [
                                             Positioned(
                                                child: Container(
                                               
                                                  color: Colors.white,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          ticket.itemName,
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        child: Container(
                                                          color: Colors.white,
                                                          child:
                                                              PopupMenuButton<
                                                                  String>(
                                                            offset:
                                                                Offset(-40, 0),
                                                            icon: Icon(
                                                              Icons.more_vert,
                                                              color: Color(
                                                                  0xff000000),
                                                            ),
                                                            elevation: 0.0,
                                                            itemBuilder:
                                                                (BuildContext
                                                                        context) =>
                                                                    [
                                                              PopupMenuItem<
                                                                  String>(
                                                                value:
                                                                    'VoirDetail',
                                                                child: Row(
                                                                  children: [
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        Navigator
                                                                            .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                Detail_TicketPage(),
                                                                          ),
                                                                        );
                                                                      },
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Icon(
                                                                            Icons.edit,
                                                                            color:
                                                                                Color(0xFF00587A),
                                                                          ),
                                                                          SizedBox(
                                                                              width: 8),
                                                                          Text(
                                                                            'Voir détail',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Color(0xFF00587A),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              PopupMenuItem<
                                                                  String>(
                                                                value:
                                                                    'Supprimer',
                                                                child: Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .delete,
                                                                      color: Color(
                                                                          0xFF00587A),
                                                                    ),
                                                                    SizedBox(
                                                                        width:
                                                                            8),
                                                                    Text(
                                                                      'Supprimer',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFF00587A),
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
                                              ),
                                              Positioned(
                                                left: 0.1193847656,
                                                top: 35,
                                                child: Align(
                                                  child: SizedBox(
                                                    child: Text(
                                                      ticket.date,
                                                      style: TextStyle(
                                                        fontSize: 12.4437599182,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.399999908,
                                                        color: Color.fromARGB(
                                                            255, 142, 137, 137),
                                                      ),
                                                    ),
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
                                    margin: EdgeInsets.fromLTRB(0.12, 10, 0, 0),
                                    child: Text(
                                      '${ticket.price.toStringAsFixed(2)} DH',
                                      style: TextStyle(
                                        fontSize: 18.6656398773,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3999999591,
                                        color: Color(0xff00587a),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:corail/notification.dart';
import 'package:flutter/material.dart';
import 'detail_ticket.dart';
import 'home.dart';
import 'include/colors.dart';

class Ticket {
  final String category;
  final String itemName;
  final String imageUrl;
  final String date;
  final double price;


  Ticket({
    required this.category,
    required this.itemName,
    required this.imageUrl,
    required this.date,
    required this.price,
  });
}

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  int selectedCategoryIndex = 0;
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
      itemName: 'Zara ',
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
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
                                'Mes tickets',
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
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 60.5),
              width: double.infinity,
              height: 38,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: screenWidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Sélectionner une catégorie',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF022150),
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
              padding: EdgeInsets.fromLTRB(20, 110, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth,
                    height: 50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 190, 0, 0),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: tickets
                          .where((ticket) =>
                              ticket.category ==
                              categories[selectedCategoryIndex])
                          .map(
                              (ticket) => buildTicketContainer(context, ticket))
                          .toList(),
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

  void changeCategory(int newIndex) {
    setState(() {
      if (newIndex >= 0 && newIndex < categories.length) {
        selectedCategoryIndex = newIndex;
      }
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

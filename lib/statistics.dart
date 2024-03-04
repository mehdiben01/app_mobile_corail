import 'package:corail/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'include/colors.dart';
import 'ticket.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class Tickets {
  final String category;
  final String itemName;
  final String imageUrl;
  final String date;
  final double price;
  final Color? couleur;

  Tickets({
    required this.category,
    required this.itemName,
    required this.imageUrl,
    required this.date,
    required this.price,
    this.couleur,
  });
}

class _StatisticsPageState extends State<StatisticsPage> {
  int selectedContainerIndex = 0;
  int selectedCategoryIndex = 0;
    List<Tickets> filteredTickets = [];
 
  List<String> types = ['Aujourd\'hui', 'Cette semaine', 'Mois'];
  late List<Tickets> tickets;
    @override
  void initState() {
    super.initState();
     tickets = [
    Tickets(
      category: 'Aujourd\'hui',
      itemName: 'Vêtement',
      imageUrl: 'assets/t-shirt.png',
      date: '01/12/2023',
      price: 730.00,
      couleur: Color(0xFF026186),
    ),
    Tickets(
      category: 'Aujourd\'hui',
      itemName: 'Outils',
      imageUrl: 'assets/outils.png',
      date: '01/12/2023',
      price: 730.00,
      couleur: Color(0xFFFF9A6C),
    ),
    Tickets(
      category: 'Cette semaine',
      itemName: 'Electronic',
      imageUrl: 'assets/info.png',
      date: '01/12/2023',
      price: 730.00,
      couleur: Color(0xFFF7A9A0),
    ),
    Tickets(
      category: 'Mois',
      itemName: 'Electronic',
      imageUrl: 'assets/info.png',
      date: '01/12/2023',
      price: 730.00,
      couleur: Color(0xFF1CC4CE),
    ),
  ];
  filteredTickets = List.from(tickets);

  }
  List<String> categories = ['Vêtement', 'Beauté', 'Hobby', 'Camp', 'Sport'];

  Map<String, double> dataMap = {
    "Vêtement": 730,
    "Outils": 730,
    "Jouet": 730,
    "Electronic": 730,
  };

  final List<Color> colorList = [
    Color(0xFF026186),
    Color(0xFFFF9A6C),
    Color(0xFFF7A9A0),
    Color(0xFF1CC4CE),
  ];

   void updateSelectedCategoryIndex(int newIndex) {
    setState(() {
      selectedCategoryIndex = newIndex;
    });
  }

  Widget buildCatContainer(String type, int index) {
    return GestureDetector(
      onTap: () {
           updateSelectedCategoryIndex(index);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(10.0, 45.0, 0.0, 10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          decoration: BoxDecoration(
            color: selectedCategoryIndex == index
                ? Color(0xff00587a)
                : Color(0xfff3f5f9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              type,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.28,
                color: selectedCategoryIndex == index
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            backgroundColor: Color(0xFFFBFBFB),
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenWidth = constraints.maxWidth;

            return Stack(
              children: [
                Positioned(
                 
                  child: Container(
                    width: screenWidth,
                    height: 780,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(28, 0, 25, 40),
                            width: screenWidth,
                            height: 250,
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
                                            'Statistics',
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
                        Container(
                          width: screenWidth,
                          margin: EdgeInsets.fromLTRB(15, 160, 15, 0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(2, 26, 0, 19),
                            width: screenWidth,
                            height: 243,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                begin: Alignment(0, -1),
                                end: Alignment(0, 1),
                                colors: <Color>[
                                  Color(0xfff5f5f5),
                                  Color(0xffffffff)
                                ],
                                stops: <double>[0, 1],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0c000000),
                                  offset: Offset(0, 16),
                                  blurRadius: 28,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Text(
                                    'Achats',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Couleurs.corail,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: screenWidth,
                                  margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      PieChart(
                                        dataMap: dataMap,
                                        animationDuration:
                                            Duration(milliseconds: 800),
                                        chartLegendSpacing: 32,
                                        chartRadius:
                                            MediaQuery.of(context).size.width /
                                                5,
                                        colorList: colorList,
                                        initialAngleInDegree: 270,
                                        chartType: ChartType.ring,
                                        ringStrokeWidth: 32,
                                        legendOptions: LegendOptions(
                                          showLegendsInRow: false,
                                          legendPosition: LegendPosition.right,
                                          legendShape: BoxShape.rectangle,
                                          showLegends: false,
                                          legendTextStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        chartValuesOptions: ChartValuesOptions(
                                          showChartValueBackground: true,
                                          showChartValues: false,
                                          showChartValuesInPercentage: false,
                                          showChartValuesOutside: false,
                                          decimalPlaces: 1,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          for (var ticket in tickets)
                                            Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 0, 35, 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 15,
                                                        height: 15,
                                                        color: ticket.couleur,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                          '${ticket.category}:'),
                                                      Text(
                                                        '${ticket.price.toStringAsFixed(2)} \DH',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ],
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
                        Positioned(
                          left: screenWidth * 0.06,
                          right: screenWidth * 0.06,
                          top: 380,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: screenWidth,
                              height: 100,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Center(
                                            child: Text(
                                              'Categories',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                height: 1.2575,
                                                letterSpacing: 1,
                                                color: Couleurs.corail,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: GestureDetector(
                                            onTap: () {
                                              _showCustomAlertDialog(context);
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
                                                  'assets/settings.png',
                                                  width: 20,
                                                  height: 20,
                                                  color: Couleurs.corail,
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
                          ),
                        ),
                        Positioned(
                          top: 420,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: screenWidth,
                              height: 100,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        buildCatContainer("Aujourd'hui", 0),
                                        buildCatContainer("Cette semaine", 1),
                                        buildCatContainer("Mois", 2),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 540, 0, 0),
                          child: CustomScrollView(
                            slivers: <Widget>[
                              SliverToBoxAdapter(
                                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: filteredTickets
                            .where((ticket) =>
                                types[selectedCategoryIndex] == 'Tous' ||
                                ticket.category == types[selectedCategoryIndex])
                            .map(
                              (ticket) => buildTicketContainer(
                                context,
                                ticket,
                              ),
                            )
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

  Widget buildTicketContainer(BuildContext context, Tickets ticket) {
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
                                color: ticket.couleur?.withOpacity(0.2),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  bottomLeft: Radius.circular(6),
                                ),
                              ),
                              child: Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 80,
                                  child: Image.asset(
                                    ticket.imageUrl,
                                    width: 100,
                                    height: 100,
                                    color: ticket.couleur,
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
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 10, 20),
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
                                                      Container(
                                                        child: Text(
                                                          '${ticket.price.toStringAsFixed(2)} DH',
                                                          style: TextStyle(
                                                            fontSize:
                                                                18.6656398773,
                                                            fontWeight:
                                                                FontWeight.w400,
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
                                              ),
                                              Positioned(
                                                left: 10,
                                                top: 25,
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

  Future<void> _showCustomAlertDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => CustomAlertDialog(
        selectedCategoryIndex: selectedCategoryIndex,
        onCategoryChanged: (newIndex) {},
        categories: categories,
      ),
    );
  }
}

class CustomAlertDialog extends StatefulWidget {
  final int selectedCategoryIndex;
  final ValueChanged<int> onCategoryChanged;
  final List<String> categories;
  final Ticket? ticket;

  const CustomAlertDialog({
    Key? key,
    required this.selectedCategoryIndex,
    required this.onCategoryChanged,
    required this.categories,
    this.ticket,
  }) : super(key: key);

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  int selectedCategoryIndex = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DateTime? selectedPurchaseDate;

  List<String> get categories => widget.categories;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),
          Positioned(
            top: -30,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: MaterialApp(
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
                home: AlertDialog(
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  contentPadding: EdgeInsets.zero,
                  insetPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  content: StatefulBuilder(
                    builder: (context, setState) {
                      return Container(
                        height: 660,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    child: Center(
                                      child: Image.asset(
                                        'assets/flecheg.png',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 2),
                                    child: Text(
                                      'Filter',
                                      textAlign: TextAlign.center,
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
                                SizedBox(width: 38),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
                              child: Text(
                                "Catégories",
                                style: TextStyle(
                                  color: Couleurs.corail,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      buildCatContainer("All", 0, setState),
                                      buildCatContainer(
                                          "Vetements", 1, setState),
                                      buildCatContainer(
                                          "Cosmetic", 2, setState),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      buildCatContainer("Sport", 3, setState),
                                      buildCatContainer("Sante", 4, setState),
                                      buildCatContainer("Bijoux", 5, setState),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      buildCatContainer(
                                          "Electromenager", 6, setState),
                                      buildCatContainer(
                                          "Informatique", 7, setState),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      buildCatContainer("Outils", 8, setState),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 13.63),
                                    width: 316,
                                    height: 0.85,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe4e8ee),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
                                    child: Text(
                                      "Date d'achat",
                                      style: TextStyle(
                                        color: Couleurs.corail,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  DateTimeField(
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Date d\'achat';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'Date d\'achat',
                                      hintText: 'Date d\'achat',
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
                                    onShowPicker:
                                        (context, currentValue) async {
                                      DateTime? selectedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate:
                                            currentValue ?? DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2101),
                                        locale: Locale('fr', 'FR'),
                                        builder: (BuildContext context,
                                            Widget? child) {
                                          return Theme(
                                            data: ThemeData.light().copyWith(
                                              colorScheme: ColorScheme.light(
                                                primary: Color(0xFF00587A),
                                              ),
                                              buttonTheme: ButtonThemeData(
                                                textTheme:
                                                    ButtonTextTheme.primary,
                                              ),
                                            ),
                                            child: child!,
                                          );
                                        },
                                      );

                                      if (selectedDate != null) {
                                        setState(() {
                                          selectedPurchaseDate = selectedDate;
                                        });
                                      }

                                      return selectedDate;
                                    },
                                    onChanged: (selectedDate) {
                                      setState(() {
                                        selectedPurchaseDate = selectedDate;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    130.0, 10.0, 130.0, 10.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff125b8a),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  'Filtrer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 2,
                                    letterSpacing: 1,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void updateSelectedCategoryIndex(int newIndex) {
    setState(() {
      selectedCategoryIndex = newIndex;
    });
  }

  Widget buildCatContainer(String category, int index, StateSetter setState) {
    return GestureDetector(
        onTap: () {
          widget.onCategoryChanged(index);
          updateSelectedCategoryIndex(index);
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            decoration: BoxDecoration(
              color: selectedCategoryIndex == index
                  ? Color(0xff00587a)
                  : Color(0xfff3f5f9),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.28,
                  color: selectedCategoryIndex == index
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
          ),
        ));
  }
}

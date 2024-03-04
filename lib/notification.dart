import 'package:flutter/material.dart';
import 'include/colors.dart';

class Notif {
  final String type;
  final String itemName;
  final String imageUrl;
  final String date;
  final double price;

  Notif({
    required this.type,
    required this.itemName,
    required this.imageUrl,
    required this.date,
    required this.price,
  });
}

class NotificationPage extends StatefulWidget {
  @override
  _NotifState createState() => _NotifState();
}

class _NotifState extends State<NotificationPage> {
  int selectedCategoryIndex = 0;
  List<String> types = ['Tous', 'Non lu', 'Lire'];
  List<Notif> filteredTickets = [];
  late List<Notif> tickets;

  @override
  void initState() {
    super.initState();

    tickets = [
      Notif(
        type: 'Non lu',
        itemName: 'Non lu',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
      Notif(
        type: 'Lire',
        itemName: 'Lire',
        imageUrl: 'assets/zara.png',
        date: 'Mercredi dernier à 9h42',
        price: 120.00,
      ),
    ];
    filteredTickets = List.from(tickets);
  }

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
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
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
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: 80),
        color: Colors.white,
        child: Column(
          children: [
           Container(
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 0.5),
              width: screenWidth,
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
                              'Notification',
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
            if (tickets.isEmpty) ...[
              const SizedBox(height: 150),
              Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/notif.png',
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
                              child: Text(
                                'Aucune nouvelle notification ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  height: 1.4615384615,
                                  letterSpacing: -0.26,
                                  color: Color(0xff27364e),
                                ),
                              ),
                            ),
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 330,
                              ),
                              child: Text(
                                'Nous voulions vous informer qu\'il n\'y a actuellement aucune nouvelle notification ou mise à jour à partager avec vous pour le moment. Rassurez-vous, nous vous informerons rapidement chaque fois qu\'il y aura des mises à jour, des messages ou des changements importants qui nécessitent votre attention.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 1.7142857143,
                                  letterSpacing: -0.14,
                                  color: Color(0xff838fa0),
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
            ] else ...[
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCatContainer("Tous", 0),
                  buildCatContainer("Non lu", 1),
                  buildCatContainer("Lire", 2),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: CustomScrollView(
                  shrinkWrap: true,
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: filteredTickets
                            .where((notif) =>
                                types[selectedCategoryIndex] == 'Tous' ||
                                notif.type == types[selectedCategoryIndex])
                            .map(
                              (notif) => TicketUtils.buildTicketContainer(
                                context,
                                notif,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class TicketUtils {
  static Widget buildTicketContainer(BuildContext context, Notif notif) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(left: screenWidth * 0.000001),
            child: Stack(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      if (notif.type == 'Non lu')
                        Positioned(
                          left: 10,
                          top: 15,
                          child: Align(
                            child: SizedBox(
                              width: 6.81,
                              height: 6.81,
                              child: Image.asset(
                                'assets/cb.png',
                                width: 6.81,
                                height: 6.81,
                              ),
                            ),
                          ),
                        ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        padding: EdgeInsets.fromLTRB(0, 0, 2.88, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 0, 10.88, 0),
                              width: 50,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFFBFBFB),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(90),
                                  child: Image.asset(
                                    notif.imageUrl,
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              child: Stack(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 0),
                                          constraints: BoxConstraints(
                                            maxWidth: 250,
                                          ),
                                          child: RichText(
                                            softWrap: true,
                                            text: TextSpan(
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff000000),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'Vous avez acheté de chez ',
                                                ),
                                                TextSpan(
                                                  text: notif.itemName,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' un montant de ' +
                                                      notif.price.toString(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 45,
                                    child: Align(
                                      child: SizedBox(
                                        child: Text(
                                          notif.date,
                                          style: TextStyle(
                                            fontSize: 12.44,
                                            fontWeight: FontWeight.w400,
                                            height: 1.4,
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
          Container(
            height: 0.85,
            decoration: BoxDecoration(
              color: Color(0xffe4e8ee),
            ),
          ),
        ],
      ),
    );
  }
}

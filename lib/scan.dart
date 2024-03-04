import 'package:corail/alert.dart';
import 'package:corail/include/footer.dart';
import 'package:corail/profil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'notification.dart';
import 'include/colors.dart';
import 'package:ticket_widget/ticket_widget.dart';

class TicketData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [],
        ),
      ),
    );
  }
}

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {'label': 'Montant', 'price': '399.00DH'},
      {'label': 'Spadrille', 'price': '199.00DH'},
      {'label': 'Parfum', 'price': '279.00DH'},
      {'label': 'Parfum', 'price': '279.00DH'},
      {'label': 'Parfum', 'price': '279.00DH'},
    ];

    double totalAmount = calculateTotal(items);

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              color: Color(0xff026990),
              width: screenWidth,
              height: 200,
              child: Stack(
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 80.5),
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
                                        border: Border.all(
                                            color: Color(0xFFE8EEEE)),
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
                                      'Scan complet',
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
                                    builder: (context) => NotificationPage(),
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
                  Container(
                    padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: screenWidth * 0.1,
                          height: screenWidth * 0.1,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.0637),
                            border: Border.all(
                              color: const Color(0x19ffffff),
                              width: screenWidth * 0.016,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(170, 140, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 30.1,
                          height: 30.1,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.9637),
                            border: Border.all(
                              color: const Color(0x19ffffff),
                              width: screenWidth * 0.06,
                            ),
                          ),
                        ),
                      ],
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
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 180,
            child: Container(
              width: screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: const Color.fromARGB(255, 238, 237, 237),
                    width: double.infinity,
                    height: 800,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        TicketWidget(
                          color: Colors.white,
                          width: 350,
                          height: 500,
                          isCornerRounded: true,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Column(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      child: Container(
                                        width: 400,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xff00587a),
                                          borderRadius: BorderRadius.only(
                                            topLeft:
                                                Radius.circular(6.8647451401),
                                            topRight:
                                                Radius.circular(6.8647451401),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Detail facture Zara',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575,
                                              letterSpacing: 0.8580931425,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 250, 0),
                                      child: Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Image.asset(
                                          'assets/zara.png',
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xFFF2F2F2)),
                                        color: Color(0xFFF2F2F2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                                  child: Text(
                                                    'Date',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0.95, 10, 0),
                                                  child: Text(
                                                    '01-11-2023',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 2),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      10, 0, 0, 0),
                                                  child: Text(
                                                    'Num Facture',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0.95, 10, 0),
                                                  child: Text(
                                                    '000072615614',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xff333333),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 45, 0, 30),
                                      child: Center(
                                        child: CustomPaint(
                                            painter:
                                                DrawDottedhorizontalline()),
                                      ),
                                    ),
                                    Container(
                                      height: 150,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              for (Map<String, String?> item
                                                  in items)
                                                buildRow(item['label'] ?? '',
                                                    item['price'] ?? ''),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Center(
                                        child: CustomPaint(
                                            painter:
                                                DrawDottedhorizontalline()),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              child: Text(
                                                'Montant total TTC',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0.95, 10, 0),
                                            child: Text(
                                              '${totalAmount.toStringAsFixed(2)} DH',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey,
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
                        GestureDetector(
                          onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _buildMainScreen(),
                                ),
                              );
                            },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(35, 20, 35, 0),
                            height: 54,
                            decoration: BoxDecoration(
                              color: Color(0xff125b8a),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Enregistrer',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125,
                                  letterSpacing: 0.32,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HistoryPage(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(35, 10, 35, 0),
                            height: 54,
                            
                            child: Center(
                              child: Text(
                                'Ajouter au favorie',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125,
                                  letterSpacing: 0.32,
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
        ],
      ),
    );
  }

  Widget buildRow(String label, String value) {
    return Row(
      children: <Widget>[
        Radio(value: 1, groupValue: 1, onChanged: (value) {}),
        Expanded(
          child: Container(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0.95, 10, 0),
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  double calculateTotal(List<Map<String, String?>> items) {
    double total = 0.0;
    for (Map<String, String?> item in items) {
      // Use null-aware operator and provide default value ('0.0') if null
      total += double.parse(item['price']?.replaceAll('DH', '') ?? '0.0');
    }
    return total;
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

class DrawDottedhorizontalline extends CustomPainter {
  late Paint _paint;
  final double dotSpacing;
  final double lineWidth;

  DrawDottedhorizontalline({this.dotSpacing = 8.0, this.lineWidth = 1.2}) {
    _paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = lineWidth
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double left = -180;
    double right = 180;

    while (left < size.width || right > 0) {
      if (left < size.width) {
        canvas.drawLine(
          Offset(left, size.height / 2),
          Offset(left + lineWidth, size.height / 2),
          _paint,
        );
      }

      if (right > 0) {
        canvas.drawLine(
          Offset(right, size.height / 2),
          Offset(right - lineWidth, size.height / 2),
          _paint,
        );
      }

      left += dotSpacing;
      right -= dotSpacing;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  
}

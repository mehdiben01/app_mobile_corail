import 'package:corail/profil.dart';
import 'package:flutter/material.dart';
import 'include/footer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'include/colors.dart';

void main() => runApp(HistoryP());

class Ticket {
  final String category;
  final String itemName;
  final String imageUrl;
  final DateTime date;
  final double price;

  Ticket({
    required this.category,
    required this.itemName,
    required this.imageUrl,
    required this.date,
    required this.price,
  });
}

class HistoryP extends StatelessWidget {
  const HistoryP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const HistoryPage(),
      ),
    );
  }
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

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int selectedCategoryIndex = 0;
  late List<Ticket> tickets;
  late List<Ticket> allTickets;
  TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Ticket> filteredTickets = [];
  DateTime? selectedPurchaseDate;

  @override
  void initState() {
    super.initState();

    tickets = [];
    allTickets = [];
    tickets = [
      Ticket(
        category: 'Vêtement',
        itemName: 'Zara Mall',
        imageUrl: 'assets/zara.png',
        date: DateTime(2023, 10, 14),
        price: 120.00,
      ),
      Ticket(
        category: 'Vêtement',
        itemName: 'Zara Mall',
        imageUrl: 'assets/zara.png',
        date: DateTime(2023, 10, 13),
        price: 120.00,
      ),
      Ticket(
        category: 'Vêtement',
        itemName: 'Zara Mall',
        imageUrl: 'assets/zara.png',
        date: DateTime(2023, 10, 13),
        price: 120.00,
      ),
      Ticket(
        category: 'Vêtement',
        itemName: 'Zara Mall',
        imageUrl: 'assets/zara.png',
        date: DateTime(2023, 10, 13),
        price: 120.00,
      ),
      Ticket(
        category: 'Vêtement',
        itemName: 'Zara Mall',
        imageUrl: 'assets/zara.png',
        date: DateTime(2023, 10, 13),
        price: 120.00,
      ),
      Ticket(
        category: 'Vêtement',
        itemName: 'Zara Mall',
        imageUrl: 'assets/zara.png',
        date: DateTime(2023, 10, 13),
        price: 120.00,
      ),
      Ticket(
        category: 'Bijoux',
        itemName: 'Hobby',
        imageUrl: 'assets/zara.png',
        date: DateTime(2023, 10, 13),
        price: 120.00,
      ),
    ];
    allTickets = List.from(tickets);
    filteredTickets = List.from(allTickets);
  }

  List<String> categories = [
    'All',
    'Vêtement',
    'Cosmetic',
    'Sport',
    'Santé',
    'Bijoux',
    'Electromenager',
    'Informatique',
    'Outils',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      resizeToAvoidBottomInset: false,
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
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 93.5),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 70),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _buildMainScreen(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
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
                        Container(
                          margin: EdgeInsets.only(top: 2),
                          child: Text(
                            'Historique',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              height: 1.2575,
                              letterSpacing: 1,
                              color: Color(0xff2b2d30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _showCustomAlertDialog(context);
                    },
                    child: Expanded(
                      child: Image.asset(
                        'assets/settings.png',
                        width: 20,
                        height: 20,
                        color: Color(0xFF00587a),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 60.5),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      'assets/search.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      onChanged: (value) {
                        updateSearch(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Recherche par catégorie',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8d8da6),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      'assets/settings.png',
                      width: 24,
                      height: 24,
                      color: Color(0xFF00587a),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 130, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Catégories',
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
            Container(
              padding: EdgeInsets.fromLTRB(20, 170, 0, 0),
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
                          for (int index = 0;
                              index < categories.length;
                              index++) ...[
                            buildCategoryContainer(categories[index], index),
                            SizedBox(width: screenWidth * 0.02),
                          ],
                          SizedBox(width: screenWidth * 0.1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 250, 0, 0),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: filteredTickets
                          .where((ticket) =>
                              categories[selectedCategoryIndex] == 'All' ||
                              ticket.category ==
                                  categories[selectedCategoryIndex])
                          .where((ticket) =>
                              selectedPurchaseDate == null ||
                              ticket.date
                                  .isAtSameMomentAs(selectedPurchaseDate!))
                          .map(
                            (ticket) => TicketUtils.buildTicketContainer(
                              context,
                              ticket,
                              selectedPurchaseDate,
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
    );
  }

  void changeCategory(int newIndex) {
    setState(() {
      if (newIndex >= 0 && newIndex < categories.length) {
        selectedCategoryIndex = newIndex;
        if (categories[newIndex] == 'All') {
          allTickets = List.from(tickets);
        } else {
          allTickets = tickets
              .where((ticket) => ticket.category == categories[newIndex])
              .toList();
        }
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
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

  void updateSearch(String searchText) {
    setState(() {
      filteredTickets = allTickets
          .where((ticket) =>
              categories[selectedCategoryIndex] == 'All' ||
              ticket.category == categories[selectedCategoryIndex])
          .where((ticket) =>
              ticket.itemName
                  .toLowerCase()
                  .contains(searchText.toLowerCase()) ||
              ticket.price.toString().contains(searchText.toLowerCase()) ||
              ticket.date.toString().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  Future<void> _showCustomAlertDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => CustomAlertDialog(
        selectedCategoryIndex: selectedCategoryIndex,
        onCategoryChanged: (newIndex) {
          changeCategory(newIndex);
        },
        categories: categories,
      ),
    );
  }
}

class TicketUtils {
  static Widget buildTicketContainer(
      BuildContext context, Ticket ticket, DateTime? selectedPurchaseDate) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      
      padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
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
                              margin: EdgeInsets.fromLTRB(20, 0, 10.88, 0),
                              width: 70,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f5f9),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    ticket.imageUrl,
                                    width: 50,
                                    height: 50,
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
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 80),
                                          child: Text(
                                            ticket.itemName,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 35,
                                    child: Align(
                                      child: SizedBox(
                                        child: Text(
                                          DateFormat('dd/MM/yyyy')
                                              .format(ticket.date),
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
                      Positioned(
                        right: 25,
                        top: 10,
                        child: Align(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.12, 25, 0, 0),
                            child: Text(
                              '${ticket.price.toStringAsFixed(2)} DH',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff15b36c),
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
            top: -10,
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

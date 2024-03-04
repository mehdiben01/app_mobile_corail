import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'notification.dart';
import 'include/colors.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final Color bgColor;
  final Color iconColor;
  final String title;

  const CategoryItem({
    required this.imagePath,
    required this.bgColor,
    required this.iconColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(75),
              color: bgColor,
            ),
            child: Image.asset(
              imagePath,
              width: 30,
              height: 30,
              color: iconColor,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          height: 0.85,
          decoration: BoxDecoration(
            color: Color(0xffe4e8ee),
          ),
        ),
      ],
    );
  }
}

class _MapPageState extends State<MapPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final MapController mapController = MapController();
  bool isDrawerVisible = false;
  bool isDrawerVisibleTwo = false;
  String selectedCategory = '';

  List<String> categories = [
    'Vêtement',
    'Jouet',
    'Sport',
    'Cuisine',
    'Beauté',
    'Santé',
    'Electroménager',
    'Informatique',
    'Outil',
    'Alimentaire',
  ];
  List<String> imagePaths = [
    'assets/t-shirt.png',
    'assets/rattle.png',
    'assets/baseball.png',
    'assets/blender.png',
    'assets/collier.png',
    'assets/santé.png',
    'assets/electrom.png',
    'assets/info.png',
    'assets/outils.png',
    'assets/eating.png',
  ];
  Map<String, Map<String, Color>> categoryColors = {
    'Vêtement': {
      'bgColor': Couleurs.bg_categorie1,
      'iconColor': Couleurs.categorie1
    },
    'Jouet': {
      'bgColor': Couleurs.bg_categorie2,
      'iconColor': Couleurs.categorie2
    },
    'Sport': {
      'bgColor': Couleurs.bg_categorie3,
      'iconColor': Couleurs.categorie3
    },
    'Cuisine': {
      'bgColor': Couleurs.bg_categorie1,
      'iconColor': Couleurs.categorie1
    },
    'Beauté': {
      'bgColor': Couleurs.bg_categorie3,
      'iconColor': Couleurs.categorie3
    },
    'Santé': {
      'bgColor': Couleurs.bg_categorie2,
      'iconColor': Couleurs.categorie2
    },
    'Electroménager': {
      'bgColor': Couleurs.bg_categorie1,
      'iconColor': Couleurs.categorie1
    },
    'Informatique': {
      'bgColor': Couleurs.bg_categorie3,
      'iconColor': Couleurs.categorie3
    },
    'Outil': {
      'bgColor': Couleurs.bg_categorie2,
      'iconColor': Couleurs.categorie2
    },
    'Alimentaire': {
      'bgColor': Couleurs.bg_categorie1,
      'iconColor': Couleurs.categorie1
    },
  };
  List<String> villesMaroc = [
    'Casablanca',
    'Rabat',
    'Marrakech',
    'Fès',
    'Tanger',
    'Agadir',
    'Ouarzazate',
    'Meknès',
    'Tétouan',
    'Essaouira',
    'Chefchaouen',
    'El Jadida',
    'Fez-Meknes',
    'Oujda-Angad',
    'Kenitra',
    'Nador',
    'Beni Mellal-Khénifra',
    'Dakhla-Oued Ed-Dahab',
    'Taza-Al Hoceima-Taounate',
    'Laâyoune-Sakia El Hamra',
    'Souss-Massa',
    'Guelmim-Oued Noun',
    'Tadla-Azilal',
    'Marrakech-Safi',
    'Drâa-Tafilalet',
    'Béni Mellal-Khénifra',
  ];
  String ville = 'Choisir une ville';

  Widget getContentForCategory(String category) {
    Map<String, List<Map<String, dynamic>>> categoryItemsMap = {
      'Vêtement': [
        {'imagePath': 'assets/marjane.png', 'title': 'Marjane'},
        {'imagePath': 'assets/marjane.png', 'title': 'Another Item'},
      ],
      'Informatique': [
        {'imagePath': 'assets/marjane.png', 'title': 'Computer'},
        {'imagePath': 'assets/marjane.png', 'title': 'Laptop'},
      ],
      'Sport': [
        {'imagePath': 'assets/marjane.png', 'title': 'Football'},
        {'imagePath': 'assets/marjane.png', 'title': 'Basketball'},
      ],
    };

    List<Map<String, dynamic>> categoryItems = categoryItemsMap[category] ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: categoryItems.map((item) {
        return ListTile(
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(75),
              color: Colors.white,
            ),
            child: Image.asset(
              item['imagePath'],
              width: 30,
              height: 30,
            ),
          ),
          title: Text(
            item['title'],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                color: Color(0xff026990),
                    width: screenWidth,
                height: 980,
                child: Stack(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 80.5),
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
                                       'Oû utiliser corail',
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropdownButton<String>(
                              value: ville,
                              icon: const Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              ),
                              elevation: 16,
                              style: TextStyle(color: Colors.white),
                              dropdownColor: Couleurs.corail,
                              onChanged: (String? value) {
                                setState(() {
                                  if (value != 'Choisir une ville') {
                                    ville = value!;
                                  }
                                });
                              },
                              items: (['Choisir une ville'] + villesMaroc)
                                  .map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                        color: value == 'Choisir une ville'
                                            ? Colors.white
                                            : Colors.white,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ],
                        ),
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
            Container(
              margin: EdgeInsets.fromLTRB(0, 180, 0, 0),
              child: Column(
                children: [
                  Flexible(
                    child: FlutterMap(
                      mapController: mapController,
                      options: MapOptions(
                        center: LatLng(31.792306, -7.080168),
                        zoom: 5.0,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 9000),
              curve: Curves.easeInOutBack,
              width: isDrawerVisible ? 260 : 0,
              height: isDrawerVisible ? 800 : 0,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              margin: EdgeInsets.only(top: 180),
              alignment: isDrawerVisible
                  ? Alignment.centerRight
                  : Alignment.centerRight,
              transform: Matrix4.translationValues(
                isDrawerVisible ? MediaQuery.of(context).size.width - 255 : 0,
                0,
                0,
              ),
              child: Column(
                children: [
                  Visibility(
                    visible: isDrawerVisible,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(50, 20, 0, 10),
                      color: Couleurs.text_link,
                      child: Text(
                        'Choisir catégorie',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Column(
                    children: categories.map((category) {
                      String imagePath =
                          imagePaths[categories.indexOf(category)];
                      Map<String, Color> colors = categoryColors[category]!;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            isDrawerVisibleTwo = !isDrawerVisibleTwo;
                            selectedCategory = category;
                          });
                        },
                        child: CategoryItem(
                          imagePath: imagePath,
                          bgColor: colors['bgColor']!,
                          iconColor: colors['iconColor']!,
                          title: category,
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 9000),
              curve: Curves.easeInOutBack,
              width: isDrawerVisibleTwo ? 260 : 0,
              height: isDrawerVisibleTwo ? 800 : 0,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              margin: EdgeInsets.only(top: 180),
              alignment: isDrawerVisibleTwo
                  ? Alignment.centerRight
                  : Alignment.centerRight,
              transform: Matrix4.translationValues(
                isDrawerVisibleTwo
                    ? MediaQuery.of(context).size.width - 255
                    : 0,
                0,
                0,
              ),
              child: Column(
                children: [
                  Visibility(
                    visible: isDrawerVisibleTwo,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      color: Couleurs.text_link,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isDrawerVisibleTwo = !isDrawerVisibleTwo;
                              });
                            },
                            child: Image.asset(
                              'assets/flecheg.png',
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 60),
                          Text(
                            selectedCategory,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  getContentForCategory(selectedCategory),
                  Container(
                    height: 0.85,
                    decoration: BoxDecoration(
                      color: Color(0xffe4e8ee),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: isDrawerVisible ? 245 : 0,
              top: 190,
              child: Align(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isDrawerVisible = !isDrawerVisible;
                      isDrawerVisibleTwo = false;
                    });
                  },
                  child: SizedBox(
                    width: 28,
                    height: 28,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Color(0xff096a70)),
                        color: Color(0xffffffff),
                      ),
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

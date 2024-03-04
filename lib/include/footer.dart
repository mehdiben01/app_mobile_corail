import 'package:corail/scan.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import '../profil.dart';
import '../home.dart';
import '../statistics.dart';
import '../history.dart';
import 'package:corail/include/colors.dart';
import 'package:barcode_scan2/barcode_scan2.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int _selectedIndex = 0;
  double xOffset = 0;
  double yOffset = 0;
  bool isDrawerOpen = false;
  late CameraController _cameraController;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HistoryPage(),
    StatisticsPage(),
    ProfilPage(),
  ];

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();

    if (cameras.isNotEmpty) {
      _cameraController = CameraController(
        cameras[0],
        ResolutionPreset.medium,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  void _openCamera() {
    if (_cameraController != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Scaffold(
            body: CameraPreview(_cameraController),
          ),
        ),
      );
    }
  }

  void _openScanner() async {
    try {
      ScanResult result = await BarcodeScanner.scan();
      String barcode = result.rawContent ?? "Aucun code-barres trouvé";
      print(barcode);

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ScanPage(),
        ),
      );
    } catch (e) {
      print(e.toString());
    }
  }

  Widget buildNavItem(String imagePath, String label, int index) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            imagePath,
            height: 30.0,
            width: 30.0,
            color: _selectedIndex == index ? Color(0xFF00587a) : null,
          ),
          const SizedBox(height: 5.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              color: _selectedIndex == index ? Color(0xFF00587a) : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index >= 0 && index < _widgetOptions.length) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    if (details.primaryDelta! < -5) {
      setState(() {
        xOffset = 0;
        yOffset = 0;
        isDrawerOpen = false;
      });
    }
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: _handleDragUpdate,
      child: AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(isDrawerOpen ? 0.75 : 1.00)
          ..rotateZ(isDrawerOpen ? -25 : 0),
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
          boxShadow: [
            BoxShadow(
              color: Color(0x19444444),
              offset: Offset(-13.135008812, 21.0160140991),
              blurRadius: 10.5080070496,
            ),
          ],
          border: isDrawerOpen
              ? Border.all(
                  color: Couleurs.corail,
                  width: 30.0,
                )
              : null,
        ),
        child: Scaffold(
          floatingActionButton: InkWell(
            onTap: () {
              _openScanner();
            },
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 4.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                    spreadRadius: 5.0,
                    blurRadius: 7.0,
                    offset: Offset(0.0, 3.0),
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/qr.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          resizeToAvoidBottomInset: false,
          body: _widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomAppBar(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Stack(
              children: [
                Positioned.fill(
                  left: 15,
                  right: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      buildNavItem('assets/home.png', 'Home', 0),
                      buildNavItem('assets/history.png', 'History', 1),
                      buildNavItem('assets/statistics.png', 'Statistics', 2),
                      // GestureDetector(
                      //   onTap: () {
                      //     setState(() {
                      //       if (isDrawerOpen) {
                      //         xOffset = 0;
                      //         yOffset = 0;
                      //         isDrawerOpen = false;
                      //       } else {
                      //         xOffset = 230;
                      //         yOffset = 10;
                      //         isDrawerOpen = true;
                      //       }
                      //     });
                      //   },
                      //   child: 
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // GestureDetector(
                            //   onTap: () {
                            //     setState(() {
                            //       if (isDrawerOpen) {
                            //         xOffset = 0;
                            //         yOffset = 0;
                            //         isDrawerOpen = false;
                            //       } else {
                            //         xOffset = 200;
                            //         yOffset = 10;
                            //         isDrawerOpen = true;
                            //       }
                            //     });
                            //   },
                            //   child:
                               Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  isDrawerOpen
                                      ? GestureDetector(
                                          child: Icon(Icons.arrow_back_ios),
                                          onTap: () {
                                            setState(() {
                                              xOffset = 0;
                                              yOffset = 0;
                                              isDrawerOpen = false;
                                            });
                                          },
                                        )
                                      : GestureDetector(
                                          child: Image.asset(
                                            'assets/profil.png',
                                            height: 30.0,
                                            width: 30.0,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              xOffset = isDrawerOpen ? 0 : 320;
                                              yOffset = isDrawerOpen ? 0 : 150;
                                              isDrawerOpen = !isDrawerOpen;
                                            });
                                          },
                                        ),
                                  const SizedBox(height: 5.0),
                                  Text( 'Profil',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            // ),
                          ],
                        ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            elevation: 0.0,
          ),
        ),
      ),
    );
  }
}

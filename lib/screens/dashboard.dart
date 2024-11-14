import 'package:aquaseth/buttons/navbar.dart';
import 'package:aquaseth/screens/historical.dart';
import 'package:aquaseth/screens/login.dart';
import 'package:aquaseth/screens/parameters/ph.dart';
import 'package:flutter/foundation.dart'; // Import for kIsWeb
import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  final Future<String> Function() fetchDataFromFirebase1;
  final Future<String> Function() fetchDataFromFirebase2;
  final Future<String> Function() fetchDataFromFirebase3;

  const Sample({
    super.key,
    required this.fetchDataFromFirebase1,
    required this.fetchDataFromFirebase2,
    required this.fetchDataFromFirebase3,
  });

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  int selectedIndex = 0;
  final PageController pageController = PageController();

  void onNavItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ClawSeth Dashboard',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 5,
        leading: Icon(Icons.dashboard, color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Loginscreen()),
              );
            },
            tooltip: 'Logout',
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          // Realtime Screen
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: kIsWeb
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: DataContainer(
                            color: Colors.orange[100]!,
                            imageUrl: 'assets/image/ph.png',
                            label: 'ph',
                            value: '170 cm',
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: DataContainer(
                            color: Colors.blue[100]!,
                            imageUrl: 'assets/image/ammonia.png',
                            label: 'ammonia',
                            value: '72 kg',
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: DataContainer(
                            color: Colors.blueAccent,
                            imageUrl: 'assets/image/temperature-sensor.png',
                            label: 'TEMPERATURE 1',
                            value: '24.9 C',
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: DataContainer(
                            color: Colors.blueAccent,
                            imageUrl: 'assets/image/temperature-sensor.png',
                            label: 'TEMPERATURE 2',
                            value: '24.9 C',
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: DataContainer(
                                color: Colors.orange[100]!,
                                imageUrl: 'assets/image/ph.png',
                                label: 'ph',
                                value: '170 cm',
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: DataContainer(
                                color: Colors.blue[100]!,
                                imageUrl: 'assets/image/ammonia.png',
                                label: 'ammonia',
                                value: '72 kg',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        DataContainer(
                          color: Colors.blueAccent,
                          imageUrl: 'assets/image/temperature-sensor.png',
                          label: 'TEMPERATURE 1',
                          value: '24.9 C',
                        ),
                        SizedBox(height: 16),
                        DataContainer(
                          color: Colors.blueAccent,
                          imageUrl: 'assets/image/temperature-sensor.png',
                          label: 'TEMPERATURE 2',
                          value: '24.9 C',
                        ),
                      ],
                    ),
            ),
          ),
          // Historical Screen
          HistoricalScreen(),
        ],
      ),
      bottomNavigationBar: kIsWeb
          ? null
          : CustomNavBar(
              pageController: pageController,
              selectedIndex: selectedIndex,
              onItemSelected: onNavItemSelected,
            ),
    );
  }
}

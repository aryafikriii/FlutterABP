import 'dart:math';

import 'package:abp/account.dart';
import 'package:abp/availbooking.dart';
import 'package:abp/booking.dart';
import 'package:abp/footer.dart';
import 'package:abp/pages.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MechanicMaster - Home',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List imageList = [
    {"id": 1, "image_path": 'images/carousel-bg2.jpg'},
    {"id": 2, "image_path": 'images/bengkel3.jpg'},
    {"id": 3, "image_path": 'images/bengkel.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset('images/logo.jpg'),
            const SizedBox(width: 10),
            const Text(
              'MechanicMaster',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const wellcomepage();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    log(currentIndex);
                  },
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map(
                      (entry) {
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 17 : 7,
                            height: 7.0,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.red
                                    : Colors.white),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),

            // Service start
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  ServiceCard(
                    icon: Icon(Icons.favorite, size: 24, color: Colors.red),
                    title: 'Quality Servicing',
                    description:
                        'Diam dolor diam ipsum sit amet diam et eos erat ipsum',
                    link: 'Read More',
                  ),
                  ServiceCard(
                    icon: Icon(Icons.settings, size: 24, color: Colors.red),
                    title: 'Expert Workers',
                    description:
                        'Diam dolor diam ipsum sit amet diam et eos erat ipsum',
                    link: 'Read More',
                  ),
                  ServiceCard(
                    icon: Icon(Icons.pix_outlined, size: 24, color: Colors.red),
                    title: 'Modern Equipment',
                    description:
                        'Diam dolor diam ipsum sit amet diam et eos erat ipsum',
                    link: 'Read More',
                  ),
                ],
              ),
            ),

            //About start
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 400,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/about.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    '15',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 36,
                                    ),
                                  ),
                                  Text(
                                    'Years',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'of Experience',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
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

            // Contact Start
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const [
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '123 Street, City',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'contact@example.com',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '+1 234 567890',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: FooterNavigationBar(
        currentIndex: 0, // Index halaman saat ini (Home)
        onTap: (index) {
          switch (index) {
            case 0:
              // Navigasi ke halaman Home
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
              break;
            case 1:
              // Navigasi ke halaman Garage
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AvailBooking()),
              );
              break;
            case 2:
              // Navigasi ke halaman Ordered
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Booking()),
              );
              break;
            case 3:
              // Navigasi ke halaman Account
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Account()),
              );
              break;
          }
        },
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final String description;
  final String link;

  const ServiceCard(
      {required this.icon,
      required this.title,
      required this.description,
      required this.link,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            icon,
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                link,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

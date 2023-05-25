import 'package:abp/pages.dart';
import 'package:flutter/material.dart';
import 'package:abp/booking.dart';
import 'package:abp/account.dart';
import 'package:abp/main.dart';
import 'package:abp/main2.dart';
import 'package:abp/footer.dart';

void main() {
  runApp(const AvailBooking());
}

class AvailBooking extends StatelessWidget {
  const AvailBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MechanicMaster - Available Garage',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
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
                      return wellcomepage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(text: 'Near You'),
                  Tab(text: 'Popular'),
                  Tab(text: 'Cheapest'),
                ],
                labelColor: Colors.red,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          GarageItem(
                            image: 'images/bengkel.jpg',
                            name: 'Bengkel ABC',
                            ratings: 4,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                          GarageItem(
                            image: 'images/bengkel2.jpg',
                            name: 'Bengkel ABC',
                            ratings: 4,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                          GarageItem(
                            image: 'images/bengkel4.jpg',
                            name: 'Bengkel ABC',
                            ratings: 4,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                          GarageItem(
                            image: 'images/bengkel3.jpg',
                            name: 'Bengkel ABC',
                            ratings: 4,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          GarageItem(
                            image: 'images/bengkel3.jpg',
                            name: 'Bengkel ABC',
                            ratings: 5,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                          GarageItem(
                            image: 'images/bengkel2.jpg',
                            name: 'Bengkel ABC',
                            ratings: 4,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                          GarageItem(
                            image: 'images/bengkel4.jpg',
                            name: 'Bengkel ABC',
                            ratings: 3,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                          GarageItem(
                            image: 'images/bengkel.jpg',
                            name: 'Bengkel ABC',
                            ratings: 1,
                            reviews: 311,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: const [
                          GarageItem(
                            image: 'images/bengkel2.jpg',
                            name: 'Bengkel ABC',
                            ratings: 3,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                          GarageItem(
                            image: 'images/bengkel3.jpg',
                            name: 'Bengkel ABC',
                            ratings: 4,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                          GarageItem(
                            image: 'images/bengkel.jpg',
                            name: 'Bengkel ABC',
                            ratings: 3,
                            reviews: 310,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
                          ),
                          GarageItem(
                            image: 'images/bengkel4.jpg',
                            name: 'Bengkel ABC',
                            ratings: 1,
                            reviews: 311,
                            icon: Icon(
                              Icons.car_repair,
                              color: Colors.red,
                              size: 24,
                            ),
                            description:
                                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
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
        bottomNavigationBar: FooterNavigationBar(
          currentIndex: 1, // Index halaman saat ini (Home)
          onTap: (index) {
            switch (index) {
              case 0:
                // Navigasi ke halaman Home
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
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
      ),
    );
  }
}

class GarageItem extends StatelessWidget {
  final String image;
  final String name;
  final int ratings;
  final int reviews;
  final Icon icon;
  final String description;

  const GarageItem(
      {required this.image,
      required this.name,
      required this.ratings,
      required this.reviews,
      required this.icon,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 2.0,
        child: Column(
          children: [
            Image.asset(image),
            ListTile(
              leading: icon,
              title: Text(name),
              subtitle: Text('$ratings stars ($reviews reviews)'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(description),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aksi saat tombol "Book Now" ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Booking(),
                      ),
                    );
                  },
                  child: const Text('Book Now'),
                ),
                const SizedBox(width: 8.0),
                OutlinedButton(
                  onPressed: () {
                    // Aksi saat tombol "Like" ditekan
                  },
                  child: const Text('Like'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

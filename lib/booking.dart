import 'package:abp/pages.dart';
import 'package:abp/payment.dart';
import 'package:flutter/material.dart';
import 'package:abp/availbooking.dart';
import 'package:abp/account.dart';
import 'package:abp/main2.dart';
import 'package:abp/footer.dart';

void main() {
  runApp(const Booking());
}

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Book(),
    );
  }
}

class Book extends StatelessWidget {
  const Book({super.key});

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
                    return wellcomepage();
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
            // Booking Start
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'Booking',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Name',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Phone Number',
                            ),
                          ),
                          DropdownButtonFormField(
                            decoration: const InputDecoration(
                              labelText: 'Service',
                            ),
                            items: const [
                              DropdownMenuItem(
                                value: 'Service 1',
                                child: Text('Service 1'),
                              ),
                              DropdownMenuItem(
                                value: 'Service 2',
                                child: Text('Service 2'),
                              ),
                              DropdownMenuItem(
                                value: 'Service 3',
                                child: Text('Service 3'),
                              ),
                            ],
                            onChanged: (value) {},
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Date',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Time',
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Payment();
                                  },
                                ),
                              );
                            },
                            child: const Text('Submit'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Booking End
          ],
        ),
      ),
      bottomNavigationBar: FooterNavigationBar(
        currentIndex: 2, // Index halaman saat ini (Booking)
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

import 'package:flutter/material.dart';
import 'package:abp/availbooking.dart';
import 'package:abp/booking.dart';
import 'package:abp/main2.dart';
import 'package:abp/footer.dart';

void main() {
  runApp(const Account());
}

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const AccountPage(),
    );
  }
}

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
              // Logika logout
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 16.0),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Account page navigation
            Container(
              margin: const EdgeInsets.only(bottom: 4.0),
              child: Row(
                children: [
                  // Pills navs
                  Expanded(
                    child: SizedBox(
                      height: 40.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          GestureDetector(
                            onTap: () => _tabController.animateTo(0),
                            child: NavItem(
                              label: 'Profile',
                              isActive: _tabController.index == 0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _tabController.animateTo(1),
                            child: NavItem(
                              label: 'Security',
                              isActive: _tabController.index == 1,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _tabController.animateTo(2),
                            child: NavItem(
                              label: 'History',
                              isActive: _tabController.index == 2,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _tabController.animateTo(3),
                            child: NavItem(
                              label: 'Ordered',
                              isActive: _tabController.index == 3,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => _tabController.animateTo(4),
                            child: NavItem(
                              label: 'Liked',
                              isActive: _tabController.index == 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            // Pills content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Profile tab
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Card(
                                margin: const EdgeInsets.only(bottom: 16.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Profile Picture',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 8.0),
                                      Image.asset('images/account-logo.png'),
                                      const SizedBox(height: 8.0),
                                      const Text('Valerie Luna'),
                                      const SizedBox(height: 8.0),
                                      const Text(
                                        'JPG or PNG no larger than 5 MB',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            color: Colors.grey),
                                      ),
                                      const SizedBox(height: 8.0),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Upload new image action
                                        },
                                        child: const Text('Upload new image'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Card(
                                margin: const EdgeInsets.only(bottom: 16.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Account Details',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 16.0),
                                      Form(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextFormField(
                                              initialValue: 'Valeria Luna',
                                              decoration: const InputDecoration(
                                                  labelText: 'Name'),
                                            ),
                                            const SizedBox(height: 16.0),
                                            TextFormField(
                                              initialValue:
                                                  'valierielune@example.com',
                                              decoration: const InputDecoration(
                                                  labelText: 'Email'),
                                            ),
                                            const SizedBox(height: 16.0),
                                            TextFormField(
                                              initialValue: '+628123456789',
                                              decoration: const InputDecoration(
                                                  labelText: 'Phone number'),
                                            ),
                                            const SizedBox(height: 16.0),
                                            TextFormField(
                                              decoration: const InputDecoration(
                                                  labelText: 'Address'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 16.0),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Save changes action
                                        },
                                        child: const Text('Save changes'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  // Security tab
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Card(
                                margin: const EdgeInsets.only(bottom: 16.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Change Password',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 16.0),
                                      TextFormField(
                                        initialValue: '********',
                                        decoration: const InputDecoration(
                                            labelText: 'Current Password'),
                                        obscureText: true,
                                      ),
                                      const SizedBox(height: 16.0),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            labelText: 'New Password'),
                                        obscureText: true,
                                      ),
                                      const SizedBox(height: 16.0),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            labelText: 'Confirm New Password'),
                                        obscureText: true,
                                      ),
                                      const SizedBox(height: 16.0),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Change password action
                                        },
                                        child: const Text('Change Password'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Card(
                                margin: const EdgeInsets.only(bottom: 16.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Two-Factor Authentication',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 16.0),
                                      TextFormField(
                                        initialValue: '+628123456789',
                                        decoration: const InputDecoration(
                                            labelText: 'SMS Number'),
                                      ),
                                      const SizedBox(height: 16.0),
                                      const Text(
                                          'Enable two-factor authentication to add an extra layer of security to your account.'),
                                      const SizedBox(height: 16.0),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Enable two-factor authentication action
                                        },
                                        child: const Text('Enable'),
                                      ),
                                      OutlinedButton(
                                        onPressed: () {
                                          // Disable two-factor authentication action
                                        },
                                        child: const Text('Disable'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  // History tab
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Card(
                                margin: const EdgeInsets.only(bottom: 16.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Order History',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 16.0),
                                      ListTile(
                                        leading: Icon(Icons.history),
                                        title: Text('Order #12345'),
                                        subtitle: Text('Date: 2023-05-15'),
                                        trailing: Text('Rp120.000'),
                                      ),
                                      SizedBox(height: 8.0),
                                      ListTile(
                                        leading: Icon(Icons.history),
                                        title: Text('Order #67890'),
                                        subtitle: Text('Date: 2023-05-10'),
                                        trailing: Text('Rp150.000'),
                                      ),
                                      SizedBox(height: 8.0),
                                      ListTile(
                                        leading: Icon(Icons.history),
                                        title: Text('Order #54321'),
                                        subtitle: Text('Date: 2023-05-05'),
                                        trailing: Text('Rp320.000'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  // Ordered tab
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return // Ordered tab
                          Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Card(
                                margin: const EdgeInsets.only(bottom: 16.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Ordered Items',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 16.0),
                                      ListTile(
                                        leading: Icon(Icons.shopping_cart),
                                        title: Text('Bengkel 1'),
                                        subtitle: Text('Order #12345'),
                                        trailing: Text('Rp120.000'),
                                      ),
                                      SizedBox(height: 8.0),
                                      ListTile(
                                        leading: Icon(Icons.shopping_cart),
                                        title: Text('Bengkel 2'),
                                        subtitle: Text('Order #67890'),
                                        trailing: Text('Rp150.000'),
                                      ),
                                      SizedBox(height: 8.0),
                                      ListTile(
                                        leading: Icon(Icons.shopping_cart),
                                        title: Text('Bengkel 3'),
                                        subtitle: Text('Order #54321'),
                                        trailing: Text('Rp320.000'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  // Liked tab
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Card(
                                margin: const EdgeInsets.only(bottom: 16.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Liked Bengkels',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 16.0),
                                      ListTile(
                                        leading: Image.asset(
                                          'images/bengkel.jpg',
                                          width: 40.0,
                                          height: 40.0,
                                        ),
                                        title: const Text('Bengkel 1'),
                                        subtitle:
                                            const Text('Location: Jakarta'),
                                      ),
                                      SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // this is to center both
                                          children: <Widget>[
                                            OutlinedButton(
                                              onPressed: () {
                                                // Disable two-factor authentication action
                                              },
                                              child: const Text('Unlike'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      ListTile(
                                        leading: Image.asset(
                                          'images/bengkel2.jpg',
                                          width: 40.0,
                                          height: 40.0,
                                        ),
                                        title: const Text('Bengkel 2'),
                                        subtitle:
                                            const Text('Location: Surabaya'),
                                      ),
                                      SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // this is to center both
                                          children: <Widget>[
                                            OutlinedButton(
                                              onPressed: () {
                                                // Disable two-factor authentication action
                                              },
                                              child: const Text('Unlike'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      ListTile(
                                        leading: Image.asset(
                                          'images/bengkel3.jpg',
                                          width: 40.0,
                                          height: 40.0,
                                        ),
                                        title: const Text('Bengkel 3'),
                                        subtitle:
                                            const Text('Location: Bandung'),
                                      ),
                                      SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // this is to center both
                                          children: <Widget>[
                                            OutlinedButton(
                                              onPressed: () {
                                                // Disable two-factor authentication action
                                              },
                                              child: const Text('Unlike'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FooterNavigationBar(
        currentIndex: 3, // Index halaman saat ini (Home)
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

class NavItem extends StatelessWidget {
  final String label;
  final bool isActive;

  const NavItem({required this.label, this.isActive = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: isActive ? Colors.red : Colors.black,
        ),
      ),
    );
  }
}

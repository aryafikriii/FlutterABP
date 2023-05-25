import 'package:flutter/material.dart';

class FooterNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const FooterNavigationBar(
      {required this.currentIndex, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey, // Warna latar belakang footer
      selectedItemColor: Colors.red, // Warna ikon terpilih
      unselectedItemColor: Colors.black, // Warna ikon tidak terpilih
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build),
          label: 'Garage',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
    );
  }
}

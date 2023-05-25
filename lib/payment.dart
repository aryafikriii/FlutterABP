import 'package:abp/pages.dart';
import 'package:flutter/material.dart';
import 'package:abp/availbooking.dart';
import 'package:abp/booking.dart';
import 'package:abp/account.dart';
import 'package:abp/main2.dart';
import 'package:abp/footer.dart';

void main() {
  runApp(const Payment());
}

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
      body: Center(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16.0),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'images/qris.png',
                              height: 300,
                            ),
                          ),
                        ),
                        const Text(
                          'How to pay?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        const Icon(
                          Icons.arrow_downward,
                          color: Colors.red,
                          size: 16.0,
                        ),
                        const SizedBox(height: 8.0),
                        const Text('QRIS'),
                        const Text(
                          'Buka aplikasi QRIS di ponsel Anda dan pilih tombol "Scan QR". Kemudian, taruh ponsel Anda di depan kode QR yang ditampilkan di atas.',
                        ),
                        const Text(
                          'Setelah terdeteksi, aplikasi QRIS akan menampilkan informasi tentang merchant dan jumlah pembayaran yang akan dibayar, masukkan nominal sesuai dengan tagihan pada laman sebelumnya.',
                        ),
                        const Text(
                          'Jika sudah benar, tekan tombol "Bayar" untuk menyelesaikan transaksi. Tunggu hingga proses pembayaran selesai, dan Anda akan menerima notifikasi bahwa pembayaran telah berhasil dilakukan.',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.access_time,
                                size: 36.0,
                              ),
                              const SizedBox(height: 16.0),
                              const Text(
                                'Pembayaran anda sedang diproses, ini memerlukan waktu beberapa detik dan jangan meninggalkan halaman ini',
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16.0),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Sudah Membayar'),
                ),
              ],
            ),
          ),
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

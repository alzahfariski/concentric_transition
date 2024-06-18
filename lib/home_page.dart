import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:splah_demo/card_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final data = [
  CardData(
      title: 'Selamat Datang di Alfaefsa!',
      subtitle: 'Temukan berbagai produk terbaik hanya dengan beberapa klik.',
      image: Image.asset('assets/kuning.png'),
      backgroundColor: const Color(0xFFFFB74D),
      titleColor: const Color(0xFF333333),
      subtitleColor: const Color(0xFF666666)),
  CardData(
      title: 'Pilihan Produk yang Beragam',
      subtitle:
          'Mulai dari kebutuhan sehari-hari hingga barang-barang mewah, semua ada di sini.',
      image: Image.asset('assets/biru.png'),
      backgroundColor: const Color(0xffE1BEE7),
      titleColor: const Color(0xFF333333),
      subtitleColor: const Color(0xFF666666)),
  CardData(
      title: 'Dukungan Pelanggan 24/7',
      subtitle:
          'Kami siap membantu Anda kapan saja untuk pengalaman belanja yang sempurna',
      image: Image.asset('assets/kuning1.png'),
      backgroundColor: const Color(0xFFFFE082),
      titleColor: const Color(0xFF333333),
      subtitleColor: const Color(0xFF666666)),
  CardData(
      title: 'Transaksi Mudah dan Aman',
      subtitle:
          'Nikmati kemudahan berbelanja dengan metode pembayaran yang terpercaya',
      image: Image.asset('assets/biru1.png'),
      backgroundColor: const Color(0xFFD1C4E9),
      titleColor: const Color(0xFF333333),
      subtitleColor: const Color(0xFF666666)),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        itemCount: data.length,
        colors: data.map((e) => e.backgroundColor).toList(),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (int index) {
          return CardUIView(data: data[index]);
        },
      ),
    );
  }
}

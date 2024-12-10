import 'package:flutter/material.dart';
import 'package:flutter_perpus1/pages/users_page.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/book_list_page.dart';
import 'pages/anggota_page.dart';
import 'pages/peminjaman_page.dart';
import 'pages/pengembalian_page.dart';
import 'pages/user_peminjaman_page.dart';
import 'pages/user_pengembalian_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Komik DongKak',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 228, 251)),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      routes: {
        '/home': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          return HomePage(
            isAdmin: args?['isAdmin'] ?? false,
            userData: args?['userData'],
          );
        },
        '/user/peminjaman': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          return UserPeminjamanPage(
            userData: args?['userData'],
          );
        },
        '/user/pengembalian': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          return UserPengembalianPage(
            userData: args?['userData'],
          );
        },
        '/buku': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          return BookListPage(isAdmin: args?['isAdmin'] ?? false);
        },
        '/anggota': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          return AnggotaPage(isAdmin: args?['isAdmin'] ?? false);
        },
        '/peminjaman': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          return PeminjamanPage(
            userData: args?['userData'] ?? {},
          );
        },
        '/pengembalian': (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
          return PengembalianPage(userData: args?['userData']);
        },
      },
    );
  }
}

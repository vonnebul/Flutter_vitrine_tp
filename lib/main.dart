import 'package:autreprojet/pages/Contact.dart';
import 'package:autreprojet/pages/Produit.dart';
import 'package:autreprojet/pages/monAccueil.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'connection flutter et nodeJS via express',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/' : (context) => const MonAcceuil(),
        '/produit': (context) => const Produit(),
        '/contact': (context) => const Contact(),
      },
    );
  }
}


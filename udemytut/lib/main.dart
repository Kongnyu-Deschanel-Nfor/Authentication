import 'package:flutter/material.dart';
import 'package:udemytut/pages/bushfires.dart';
import 'package:udemytut/pages/earthquake.dart';
import 'package:udemytut/pages/flood.dart';
import 'pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disaster App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/flood': (context) => Flood(),
        // '/volcano': (context) => VolcanoPage(),
        '/bushfire': (context) => BushFire(),
        '/earthquake': (context) => EarthQuake(),
        // '/landslide': (context) => LandslidePage(),
        // '/industrialfire': (context) => IndustrialFirePage(),
      },
    );
  }
}




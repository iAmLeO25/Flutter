import 'package:flutter/material.dart';
import 'package:todo/screens/CreamScreen.dart';
import 'package:todo/screens/LotionScreen.dart';
import 'package:todo/screens/Home.dart';
import 'package:todo/screens/PlantLanding.dart';
import 'package:todo/screens/DiscoveryScreen.dart';
import 'package:todo/screens/ProductScreen.dart';
import 'package:todo/widgets/ProductCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: Home
      //home: PlantLanding(),
      //home: DiscoveryScreen(),
      //home: CreamScreen(),
      //home: LotionScreen(brands:),
      home: ProductScreren(),
    );
  }
}

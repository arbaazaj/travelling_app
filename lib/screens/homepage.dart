import 'package:flutter/material.dart';
import 'package:travelling_app/themes/colors..dart';
import 'package:travelling_app/widgets/custom_app_bar.dart';
import 'package:travelling_app/widgets/category_card_widget.dart';
import 'package:travelling_app/widgets/custom_bottom_navbar_widget.dart';
import 'package:travelling_app/widgets/main_card_widget.dart';
import 'package:travelling_app/widgets/travel_location_title_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<State> btmNavKey = GlobalKey<State>();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(currentIndex: currentIndex),
      appBar: CustomAppBar(
        size: 100,
        icon: const Icon(Icons.search, color: textColor),
        avatarImage: Image.asset('assets/avatar.jpg'),
      ),
      body: Column(
        children: const [
          TravelLocation(),
          MainCards(),
          CategoryCards(),
        ],
      ),
    );
  }
}

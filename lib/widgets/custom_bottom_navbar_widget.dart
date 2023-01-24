import 'package:flutter/material.dart';
import 'package:travelling_app/themes/colors..dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;

  const CustomBottomNavBar({Key? key, required this.currentIndex})
      : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late int selected;

  @override
  void initState() {
    super.initState();
    setState(() {
      selected = widget.currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22.0),
        child: BottomNavigationBar(
          backgroundColor: textColor,
          onTap: updateSelectedOption,
          currentIndex: selected,
          elevation: 4.0,
          selectedFontSize: 18.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: const Color(0xFF608e9e),
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: textColor,
              label: 'Location',
              icon: selected != 0
                  ? const Icon(Icons.assistant_navigation)
                  : Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.assistant_navigation,
                  ),
                  Positioned.fill(
                    top: 30,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.circle, size: 3),
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favorite',
              icon: selected != 1
                  ? const Icon(Icons.favorite_outline)
                  : Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.favorite,
                  ),
                  Positioned.fill(
                    top: 30,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.circle, size: 3),
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: 'Watch-list',
              icon: selected != 2
                  ? const Icon(Icons.watch_later_outlined)
                  : Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.watch_later,
                  ),
                  Positioned.fill(
                    top: 30,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.circle, size: 3),
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              label: 'Comment',
              icon: selected != 3
                  ? const Icon(Icons.chat_bubble_outline)
                  : Stack(
                clipBehavior: Clip.none,
                children: const [
                  Icon(
                    Icons.chat_bubble,
                  ),
                  Positioned.fill(
                    top: 30,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.circle, size: 3),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateSelectedOption(int value) {
    setState(() {
      selected = value;
    });
  }
}
import 'package:flutter/material.dart';
import 'package:travelling_app/themes/colors..dart';

class MainCards extends StatelessWidget {
  const MainCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.normal,
                      color: Colors.blue.shade600.withOpacity(0.3),
                      blurRadius: 7,
                      spreadRadius: 2,
                    ),
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Image.asset('assets/bali1.jpg',
                          width: 200, height: 220, fit: BoxFit.cover),
                      Positioned.fill(
                        right: 16.0,
                        bottom: 16.0,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: const Icon(Icons.arrow_forward_ios,
                                color: textColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('assets/bali2.jpg',
                    width: 160, height: 190, fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('assets/bali3.jpeg',
                    width: 160, height: 190, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
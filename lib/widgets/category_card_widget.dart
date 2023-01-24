import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({
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
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('assets/graphics.jpg',
                    width: 120, height: 150, fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('assets/graphics.jpg',
                    colorBlendMode: BlendMode.color,
                    color: Colors.blue,
                    width: 120,
                    height: 150,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('assets/graphics.jpg',
                    color: Colors.red,
                    colorBlendMode: BlendMode.color,
                    width: 120,
                    height: 150,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('assets/graphics.jpg',
                    color: Colors.green,
                    colorBlendMode: BlendMode.color,
                    width: 120,
                    height: 150,
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
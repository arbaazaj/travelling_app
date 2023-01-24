import 'package:flutter/material.dart';
import 'package:travelling_app/themes/colors..dart';

class TravelLocation extends StatelessWidget {
  const TravelLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30.0, top: 30.0),
          child: Text('Bali',
              style: TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: 36,
                  color: textColor,
                  fontWeight: FontWeight.w500)),
        ),
        Flexible(
          child: Transform.translate(
            offset: const Offset(55, 15),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/design.png'),
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.centerRight)),
              width: MediaQuery.of(context).size.width,
              height: 100,
            ),
          ),
        ),
      ],
    );
  }
}
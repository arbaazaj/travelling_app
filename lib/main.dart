import 'package:flutter/material.dart';
import 'package:travelling_app/colors..dart';
import 'package:travelling_app/custom_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travelling App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Travelling App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        size: 100,
        icon: const Icon(Icons.search, color: textColor,),
        avatarImage: Image.asset('assets/avatar.jpg'),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30.0, top: 40.0),
                child: Text('Bali',
                    style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 36,
                        color: textColor,
                        fontWeight: FontWeight.w500)),
              ),
              Flexible(
                child: Transform.translate(
                  offset: const Offset(55, 30),
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('design.png'),
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.centerRight)),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset('assets/bali1.jpg', width: 200, height: 250, fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

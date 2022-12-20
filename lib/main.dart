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
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.search, color: Color(0xFF07425a), size: 30),
        actions: [
          CircleAvatar(
            child: Image.asset('assets/avatar.jpg'),
          ),
        ],
      ),
      body: Row(
        children: [
          const Text('Bali', style: TextStyle(fontSize: 36, color: textColor, fontWeight: FontWeight.w700)),
          Flexible(
            child: Transform.translate(
              offset: const Offset(55, 0),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('design.png'),
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.centerRight
                )),
                width: MediaQuery.of(context).size.width,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

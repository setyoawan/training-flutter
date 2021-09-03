import 'package:flutter/material.dart';
// import 'package:training/meet1/about.dart';
// import 'package:training/meet1/portfolio.dart';
import 'package:training/meet2/listview.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AWP Flutter v2'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/banner.jpg"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Setyo Awan Prakoso",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/confirmed.png"),
          ],
        ),
      ),
    );
  }
}

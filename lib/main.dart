import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
   const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, // Masquer bannière debug
      title: "My first Material App",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueGrey,
        primarySwatch: Colors.red
      ),
      home: BasicPage() // wiget racine
    );
  }
}

class BasicPage extends StatelessWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var platform = Theme.of(context).platform;
    var brightness = Theme.of(context).brightness;
    // print("size=$size platform=$platform brightness=$brightness");
    return const Scaffold(
      // appBar: ,
      body:  Text('Hello World !')
      // bottomNavigationBar: ,
      // floatingActionButton: ,
      // bottomSheet: ,
      // drawer: ,
    );
  }


}
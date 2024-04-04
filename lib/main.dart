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
    return  Scaffold(
      // appBar: ,
      body: Container(
        height: 100,  // size.height
        width: 300,  // size.width
        //color: const Color.fromARGB(255, 200, 35, 78),
        color: Colors.orangeAccent,
        //margin: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(left:10, top:50),
        child: const Text(
          "Hello World !",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 32,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        )
      ),
      // bottomNavigationBar: ,
      // floatingActionButton: ,
      // bottomSheet: ,
      // drawer: ,
    );
  }


}
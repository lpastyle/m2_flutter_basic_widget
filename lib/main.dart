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
    return Scaffold(
      // appBar: ,
      body: Center (
        //child: fromAssetImage(height: size.height, width: size.width)
        //child: fromNetworkImage()
        child: Image.asset(
          "images/beach.jpg", // à définir dans le pubspec.yaml
          fit: BoxFit.fill,
          height: 150,
          width: 300,        
        )
      )
      // bottomNavigationBar: ,
      // floatingActionButton: ,
      // bottomSheet: ,
      // drawer: ,
    );
  }
}

 Image fromAssetImage({required double height, required double width}) {
    return Image.asset(
      "images/beach.jpg", // à définir dans le pubspec.yaml
      fit: BoxFit.cover,
      height: height,
      width: width,
    );
  }

  Image fromNetworkImage() {
    return Image.network(
      "https://images.pexels.com/photos/1756086/pexels-photo-1756086.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      height: 200,
      width: 100,
    );
  }

Text demoRichText() {
  return const Text.rich(
          TextSpan(
            text: "premier mot\n",
            style: TextStyle(color: Colors.red, fontSize: 24),
            children: [
              TextSpan(
                text: "Deuxième mot\n",
                style: TextStyle(color: Colors.green, fontSize: 18,),                
              ),
              TextSpan(
                text: "Troisième mot",
                style: TextStyle(color: Colors.blue, fontSize: 32,),                
              ),
            ]
          ),
        textAlign: TextAlign.center
        );
}


 Text simpleText(String text) {
  return  Text(
          text,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 32,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        );
 }
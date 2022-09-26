import 'package:first_flutter_app/login_page.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: (const Text('Universal Wallpaper')),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
          children:[
           Container(
            margin: EdgeInsets.only(bottom: 50),
            height: 100,
            width: 150,
            child: Image.asset('assets/images/2.jpg'),
           ),
            
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: EdgeInsets.only(bottom: 160),
              decoration: BoxDecoration(
                border: Border.all(width: 3,color: Colors.black),
              ),
              child: Column(
                children:const [
                  Text("App Name: Universal Wallpaper"),
                Text('App Version: 1.000'),
                Text("Developed by Masud"),
                ]
                
              ),
              
            
            )
          ],
        )));
  }
}

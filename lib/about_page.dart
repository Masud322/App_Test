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
        body:
        Center(
            child: Column(
          children:[
            const SizedBox(
              height: 90,
            ),
           Container(
            height: 120,
            width: 300,
            child: Image.asset('assets/images/logo.jpg',fit: BoxFit.cover,),
            
           ),
           const SizedBox(
            height: 100,
           ),
            
            Container(
              height: 100,
              width: 250,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 160),
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

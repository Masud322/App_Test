
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
          title:Row(
          children: const [
            Text('Universal',style: TextStyle(color: Colors.indigo,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'Shojumaru-Regular',decoration: TextDecoration.underline,decorationThickness: 2,decorationStyle: TextDecorationStyle.double)),
            SizedBox(
              width: 5,
            ),
            Text('Wallpapers',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontFamily: 'Shojumaru-Regular'),),
          ],
        ),
        ),
        backgroundColor: Color.fromARGB(255, 138, 220, 44),
        body:
        Center(
            child: Column(
          children:[
            
           const SizedBox(
            height: 260,
           ),
            Container(
              height: 140,
              width: 270,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 160),
              decoration: BoxDecoration(
                border: Border.all(width: 3,color: Colors.indigo),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Text("App Name: Universal Wallpaper",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.purple),),
                Text('App Version: 1.000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.purple),),
                Text("Developed by Masud",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.purple),),
                ]
                
              ),
              
            
            )
          ],
        )));
  }
}

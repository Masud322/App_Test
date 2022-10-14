import 'package:flutter/material.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Row(
          children: const [
            Text('Univarsal',style: TextStyle(color: Colors.indigo,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'Shojumaru-Regular',decoration: TextDecoration.underline,decorationThickness: 2,decorationStyle: TextDecorationStyle.double)),
            SizedBox(
              width: 5,
            ),
            Text('Wallpapers',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontFamily: 'Shojumaru-Regular'),),
          ],
        ),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
          children:[
           
            Container(
              height: 250,
              //padding: const EdgeInsets.all(5.0),
              //margin: EdgeInsets.only(bottom: 120),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                border: Border.all(width: 1,color: Colors.black),
              ),
              child:Center(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:const [
                  Text("Free Signup for all",style: TextStyle(fontWeight:FontWeight.bold ),),
                Text("Please don't copy other photos",style: TextStyle(fontWeight:FontWeight.bold ),),
                Text("Submite your own photo 😊",style: TextStyle(fontWeight:FontWeight.bold ),),
                ]
                
              ),
              ) 
              
            
            )
          ],
        )));
  }
}

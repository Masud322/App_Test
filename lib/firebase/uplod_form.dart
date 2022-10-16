

import 'package:first_flutter_app/allpages/home.dart';
import 'package:flutter/material.dart';
class Uplode_Form_Page extends StatefulWidget {
  const Uplode_Form_Page({super.key});

  @override
  State<Uplode_Form_Page> createState() => _Uplode_Form_PageState();
}

class _Uplode_Form_PageState extends State<Uplode_Form_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:
           SingleChildScrollView(
             child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(padding: EdgeInsets.only(right: 185),
                child:Text('Universal',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.indigo,fontFamily: 'Shojumaru-Regular',decoration: TextDecoration.underline,decorationThickness: 2,decorationStyle: TextDecorationStyle.double),),),
                
                const Text('WALLPAPERS',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.purpleAccent,fontFamily: 'Shojumaru-Regular'),),
                const SizedBox(
                  height: 40,
                ),
                const Text('Uplode Form',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.indigo),),
                const SizedBox(
                  height: 30,
                ),
                  Column(
                  children: [
                    Row(
                      children: [
                      Container(
                    width: 200,
                    padding: const EdgeInsets.all(20),
                    child: const TextField(
                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'First Name',
                      ),
                    ),
                  ),
                   Container(
                    width: 200,
                    padding: const EdgeInsets.all(20),
                    child: const TextField(
                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Last Name',
                      ),
                    ),
                  ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                    width: 200,
                    padding: const EdgeInsets.all(20),
                    child: const TextField(
                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Photo Category',
                      ),
                    ),
                  ),
                   Container(
                    width: 200,
                    padding: const EdgeInsets.all(20),
                    child: const TextField(
                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Device Name',
                      ),
                    ),
                  ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width:0.5),
                            borderRadius:BorderRadius.all(Radius.circular(5)),
                          ),
                        // width: 270,
                        // padding: const EdgeInsets.all(0),
                        child: TextButton.icon(onPressed: (){

                    }, icon: Icon(Icons.upload),
                       label: Text('Uplode Image'))
                    // const TextField(
                    //   decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    // hintText: 'Uplode your image',
                    // suffixIcon: Icon(Icons.upload),
                    //   ),
                    // ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: (){

                    setState(() {
                      AlertDialog(
                        content: SizedBox(
                          child: Column(
                            children: [
                              Text('Thank You'),
                              TextButton(onPressed: (){
                                
                                 Navigator.pushReplacement(
                                  context, MaterialPageRoute(builder: (_) => const Home_Page()));

                              }, child: Text('OK')
                              ),
                            ],
                          )
                          )
                      );
                    });

                    }, child: const Text('Submit'))
                      ],
                    ),
                  ],
                  
                ) ,
                
              ],
             ),
           )
      
    );
  }
}

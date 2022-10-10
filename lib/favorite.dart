// ignore_for_file: unnecessary_const

import 'dart:ffi';

import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/catagory_page.dart';
import 'package:first_flutter_app/navibar.dart';
import 'utility/favList.dart';
import 'package:first_flutter_app/utility/images.dart';
import 'package:flutter/material.dart';


class Favorite_1 extends StatefulWidget {
  const Favorite_1({super.key, required int pageId});

  @override
  State<Favorite_1> createState() => _Favorite_1State();

  static void addImage({required String imgPath}) {
    _Favorite_1State.addImage(imgPath);
    print('ok');
  }
}

class _Favorite_1State extends State<Favorite_1> {
  final _images = Images.normalImages();
  List<String>? _favList;
  double check = 25;
  

  @override
  void initState(){
    super.initState();
    FavList.getFavImgList().then((theList){
      setState(() {
        _favList = theList;
        print('length is:  ${_favList!.length}');
        if(_favList!.length == 0){
          check = 25;
        }else{
          check = 0;
        }
      });
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'new_apps',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          
          title: (const Text('Universal Wallpaper')), 
          leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ), 
        ),
        backgroundColor: Color.fromARGB(255, 154, 248, 47),
        body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            const Text(
              '.....Favorite.....',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: check,
              child: Center(child: Text(check == 25.0 ? 'Favourite List Emplty!' : '')),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 12,right: 12),
                padding: const EdgeInsets.symmetric(
                  horizontal: 2,
                  vertical: 2,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _favList![index],
                              details: _images[index].details,
                              price: _images[index].price,
                              index: index,
                              title: 'Download Now',
                              id:0,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            //borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(_favList![index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: null == _favList ? 0 : _favList!.length,
                ),
              ),
            ),
          ],
        ),
      ), 
      bottomNavigationBar: const NaviBar(pageId: 3),
    ),
    );
  }
  
  static void addImage(String imgPath) {
    
  }
}
class ImageDetails {
  final String imagePath;
  final String price;
  final String details;
  final String title;

  ImageDetails({
    required this.imagePath,
    required this.details,
    required this.price,
    required this.title,
  });
}

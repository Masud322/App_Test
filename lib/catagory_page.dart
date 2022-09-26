import 'package:first_flutter_app/cetegory/abstract.dart';
import 'package:first_flutter_app/cetegory/animals.dart';
import 'package:first_flutter_app/cetegory/car.dart';
import 'package:first_flutter_app/cetegory/food.dart';
import 'package:first_flutter_app/cetegory/games.dart';
import 'package:first_flutter_app/cetegory/movies.dart';
import 'package:first_flutter_app/cetegory/nature.dart';
import 'package:first_flutter_app/cetegory/space.dart';
import 'package:first_flutter_app/cetegory/sports.dart';
import 'package:first_flutter_app/cetegory/travel.dart';
import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';

import 'navibar.dart';

void main() {
  runApp(const CatagoryPage(pageId: 2));
}

// ignore: camel_case_types
class CatagoryPage extends StatelessWidget {
  const CatagoryPage({Key? key, required this.pageId}) : super(key: key);
  final int pageId;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'new_apps',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'New_Apps'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text('Universal Wallpaper')),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
      ),
      backgroundColor: Colors.lightGreenAccent,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 10)),
          const Text(
            'Catagories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            '......Select Your Catagory......',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AbstractPage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 10),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/abstract/5.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'ABSTRACT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnimalPage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 3),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/animals/21.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'ANIMALS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CarPage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 3),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/car/58.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'CARS & BIKES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FoodPage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 3),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/food/61.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'FOODS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GamesPage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 3),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/games/71.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'GAMES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MoviePage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 3),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/movies/81.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'MOVIES',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NaturePage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 3),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/nature/91.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'NATURE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SportsPage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 3),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/sports/111.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'SPORTS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SpacePage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 3),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/space/103.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'SPACE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TravelPage()),
              );
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 12, right: 12, top: 3),
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/travel/121.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'TRAVELS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ],
      )),
      bottomNavigationBar: const NaviBar(pageId: 2),
      
    );
  }
}

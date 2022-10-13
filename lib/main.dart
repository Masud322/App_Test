// import 'package:first_flutter_app/details_page.dart';

import 'package:firebase_core/firebase_core.dart';
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
import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/drawer.dart';
import 'package:flutter/material.dart';
import 'utility/images.dart';

import 'navibar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  final _images = Images.normalImages();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 154, 248, 47),
      appBar: AppBar(
        title: (const Text('Universal Wallpapers')),
        actions: [
           IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate()); 
            }
          )
          
        ],
      ),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            
            const Text(
              '.....All Photos Here.....',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
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

                  //topLeft: Radius.circular(30),
                  //topRight: Radius.circular(30),
                ),
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
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
                            imagePath: _images[index].imagePath,
                            details: _images[index].details,
                            price: _images[index].price,
                            title: _images[index].title,
                            id: _images[index].id,
                            index: index,
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
                            image: NetworkImage(_images[index].imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _images.length,
              ),
            ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NaviBar(pageId: 1,),
    );
  }
}
class CustomSearchDelegate extends SearchDelegate
{
  
  List<String> searchResult= [
    'Abstract',
    'Animal',
    "Car",
    "Food",
    "Games",
    "Movies",
    "Nature",
    "Space",
    "Sports",
    "Travel",
    ];

  @override
  List<Widget> buildActions(BuildContext context) {

    return[
      IconButton(onPressed: (){
        if (query.isEmpty){
          close(context, null);
        }
         else{
         query = '';
        }
        
      }, icon: const Icon(Icons.clear))
    ];


  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
       close(context, null);
    }, icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) =>Center(
    child: Text(query,
    style: const TextStyle(fontSize: 64,fontWeight: FontWeight.bold),),
  );
   
   
  

  @override
  Widget buildSuggestions(BuildContext context) {

    List<String> suggestions = searchResult.where((searchResult){
     final result = searchResult.toLowerCase();
     final input = query.toLowerCase();

     return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context,index){
      final suggestion = suggestions[index];
      return ListTile(
        title: Text(suggestion),
        onTap: () {
          switch (index){
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AbstractPage()),
              );
              break;
              case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnimalPage()),
              );
              break;
              case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CarPage()),
              );
              break;
              case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FoodPage()),
              );
              break;
              case 4:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GamesPage()),
              );
              break;
              case 5:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MoviePage()),
              );
              break;
              case 6:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NaturePage()),
              );
              break;
              case 7:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SpacePage()),
              );
              break;
              case 8:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SportsPage()),
              );
              break;
              case 9:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TravelPage()),
              );
          }
        },
      );
    },);
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

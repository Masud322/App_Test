// import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/drawer.dart';
import 'package:first_flutter_app/login_page.dart';
import 'package:flutter/material.dart';
import 'utility/images.dart';

import 'navibar.dart';

void main() {
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            icon: const Icon(Icons.login),
          ),
          Center(
              child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: const Text(
              'Sign In',
              style: TextStyle(color: Colors.black),
            ),
          )),
        ],
      ),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 10),
              child: TextField(
                // onTap: () {
                //   showSearch(context: context, delegate: CustomSearchDelegate());
                // },
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Search your favorite photos',
                    suffixIcon: TextButton(
                      onPressed: () {
                      },
                      child: const Text(
                        'Enter',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    )
                    ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'All Photos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 7,
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
                            index: index,
                            id:1,
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
// class CustomSearchDelegate extends SearchDelegate
// {
//   List<String> searchTerms = ['Animal','Banana',"Pear","Watermelons","Oranges","Blueberries","Strawberries","Raspberries",];

//   @override
//   List<Widget> buildActions(BuildContext context) {

//     return[
//       // IconButton(onPressed: (){
//       //   query = '';
//       // }, icon: const Icon(Icons.clear))
//     ];


//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(onPressed: () {
//       close(context, null);
//     }, icon: const Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for(var fruit in searchTerms)
//       {
//         if(fruit.toLowerCase().contains(query.toLowerCase())){
//           matchQuery.add(fruit);
//         }
//       }
//     return ListView.builder(itemBuilder: (context,index){
//       var result = matchQuery[index];
//       return ListTile(title: Text(result),);
//     },itemCount: matchQuery.length,);
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {

//     List<String> matchQuery = [];

//     for(var fruit in searchTerms)
//       {
//         if(fruit.toLowerCase().contains(query.toLowerCase()))
//           {
//             matchQuery.add(fruit);
//           }
//       }

//     return ListView.builder(itemBuilder: (context,index){
//       var result = matchQuery[index];
//       return ListTile(title: Text(result),);
//     },itemCount: matchQuery.length,);
//   }

// }


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

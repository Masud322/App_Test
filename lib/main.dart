// import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/drawer.dart';
import 'package:first_flutter_app/login_page.dart';
import 'package:flutter/material.dart';

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
  final List<ImageDetails> _images = [
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/2.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/21.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/57.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/61.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/80.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/81.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/001.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/121.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/17.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/11.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/12.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/83.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/083.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/84.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/084.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/85.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/13.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/14.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/18.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/22.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/23.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/16.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/4.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/5.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/6.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/7.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/8.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/abstract/9.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/33.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/34.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/35.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/36.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/41.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/24.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/25.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/26.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/27.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/28.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/29.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/30.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/31.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/32.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/42.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/43.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/118.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/119.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/120.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/122.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/123.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/124.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/44.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/animals/21.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/051.jpeg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/52.jpeg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/052.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/53.jpeg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/053.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/052.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/061.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/62.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/062.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/63.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/063.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/64.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/54.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/55.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/055.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/56.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/57.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/58.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/59.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/car/60.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/064.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/65.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/065.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/66.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/67.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/68.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/69.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/food/70.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/78.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/77.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/76.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/075.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/75.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/074.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/74.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/073.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/73.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/072.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/72.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/071.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/games/71.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/081.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/82.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/082.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/085.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/86.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/87.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/88.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/89.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/movies/90.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/091.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/92.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/092.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/93.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/093.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/95.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/095.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/96.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/97.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/98.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/100.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/002.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/003.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/004.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/005.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/101.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/102.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/103.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/104.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/105.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/133.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/134.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/135.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/136.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/106.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/107.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/108.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/109.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/space/110.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/007.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/008.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/009.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/010.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/111.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/112.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/113.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/114.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/115.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/116.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/sports/117.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/125.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/126.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/127.jpg',
      title: 'New York',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/128.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/129.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/130.jpg',
      title: 'DOWNLOAD NOW',
    ),
    ImageDetails(
      imagePath: 'https://muzahidul190.com/masud/travel/132.jpg',
      title: 'DOWNLOAD NOW',
    ),
  ];
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
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Search your favorite photos',
                    suffixIcon: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Enter',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    )),
                onChanged: ((value) {}),
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
                            title: _images[index].title,
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
      bottomNavigationBar: const NaviBar(),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String title;

  ImageDetails({
    required this.imagePath,
    required this.title,
  });
}

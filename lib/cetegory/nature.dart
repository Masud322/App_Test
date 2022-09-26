import 'package:first_flutter_app/details_page.dart';
import 'package:first_flutter_app/catagory_page.dart';
import 'package:first_flutter_app/navibar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NaturePage());
}

class NaturePage extends StatelessWidget {
  const NaturePage({Key? key}) : super(key: key);

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
    imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/091.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/92.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/092.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/93.jpg',

    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/093.jpg',

    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/95.jpg',
    title: 'New York',
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/095.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/96.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/97.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/98.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/100.jpg',
    title: 'DOWNLODE NOW',
 
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
    title: 'DOWNLODE NOW',

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
    title: 'DOWNLODE NOW',
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
    title: 'DOWNLODE NOW',

  ),
  
];
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
                   MaterialPageRoute(builder: (context) => const CatagoryPage()),
                   
                   );
          },
        ), 
        ),
        backgroundColor: Colors.lightGreenAccent,
        body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            const Text(
              '.....Nature.....',
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
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 12,right: 12),
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

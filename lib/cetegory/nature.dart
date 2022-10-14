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
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 0,
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/091.jpg',
    price: 'Price: \$15.00',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 1,
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/92.jpg',
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 0,
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/092.jpg',
    price: 'Price: \$15.00',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 1,
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/93.jpg',
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',

    title: 'Download Image',
    id: 1,

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/093.jpg',
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 0,
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/95.jpg',
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 0,
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/095.jpg',
    price: 'Price: \$15.00',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 1,

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/96.jpg',
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 0,

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/97.jpg',
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 0,

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/98.jpg',
    price: 'Price: \$15.00',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 1,
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/100.jpg',
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 0,
 
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 0,

  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
    price: 'Price: \$15.00',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 1,
  ),
  ImageDetails(
    imagePath: 'https://muzahidul190.com/masud/nature/91.jpg',
    price: 'Price: \$00.00 / Free for All',
    details: 'Category: Nature',
    title: 'Download Image',
    id: 0,

  ),
  
];
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
          leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
                 context,
                   MaterialPageRoute(builder: (context) => const CatagoryPage(pageId: 4)),
                   
                   );
          },
        ), 
        ),
        backgroundColor: const Color.fromARGB(255, 154, 248, 47),
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
                fontFamily: 'Shojumaru-Regular',
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
                              details: _images[index].details,
                              price: _images[index].price,
                              title: _images[index].title,
                              index: index,
                              id: _images[index].id,
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
      bottomNavigationBar: const NaviBar(pageId: 2),
    );
        
  }
}
class ImageDetails {
  final String imagePath;
  final String price;
  final String details;
  final String title;
  final int id;

  ImageDetails({
    required this.imagePath,
    required this.details,
    required this.price,
    required this.title,
    required this.id,
    
  });
}

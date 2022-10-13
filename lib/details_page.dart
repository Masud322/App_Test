import 'package:dio/dio.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:first_flutter_app/favorite.dart';
import 'package:first_flutter_app/firebase/widget.dart';
// import 'package:first_flutter_app/favorite.dart';
import 'utility/favList.dart';
import 'package:first_flutter_app/navibar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class DetailsPage extends StatefulWidget {
  final String imagePath;
  final String price;
  final String details;
  final String title;
  final int index;
  final int id;
  const DetailsPage(
      {required this.imagePath,
      required this.details,
      required this.price,
      required this.title,
      required this.index,
      required this.id
      });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final List<String> _isFavorite = [];

  bool _hasBeenPressed = false;
  
  _save({required String url}) async {
    var response = await Dio()
        .get(url, options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(response.data),
        quality: 60,
        name: "image");
    print(result);
    Fluttertoast.showToast(msg: '$result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text('Universal',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
            SizedBox(
              width: 5,
            ),
            Text('Wallpapers',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: 'logo ${widget.index}',
                child: Container(
                  decoration: BoxDecoration(
                    //borderRadius: const BorderRadius.only(
                    //bottomLeft: Radius.circular(30),
                    //bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: NetworkImage(widget.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [],
                )
              ],
            ),
            Expanded(
              child: Container(
                //padding: const EdgeInsets.only(left: 75),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.details,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.price,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Container(
                          height: 48,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.brown.withOpacity(0.5),
                          ),
                          
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {

                                if(widget.id == 0)
                                {
                                  _save(url: widget.imagePath);
                                }
                                else {
                                showDialog(context: context, builder: (context) => Buy_Page(context: context)
                                  );
                                }
                              },
                              
                              child: const Text(
                                'Download Image',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              
                              ),
                           
                            ),
                          )),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    Container(
                      child: FavoriteButton(
                        isFavorite:
                            FavList.checkList(imagePath: widget.imagePath),

                        // iconDisabledColor: Colors.white,
                        valueChanged: (_isFavorite) {
                          print('Is Favorite : $_isFavorite');
                          setState(() {
                            FavList.addImagetoFav(imagePath: widget.imagePath);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NaviBar(pageId: 4),
    );
  }

  // FlatButton({required Null Function() onPressed, required EdgeInsets padding, required MaterialAccentColor color, required Text child}) {}
}

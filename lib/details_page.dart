import 'package:dio/dio.dart';
import 'package:first_flutter_app/navibar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';


class DetailsPage extends StatefulWidget {
  final String imagePath;
  final String title;
  final int index;
  const DetailsPage(
      {
      required this.imagePath,
      required this.title,
      required this.index
      }
      );

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {


  bool _hasBeenPressed = false;
  
_save({required String url}) async {
   var response = await Dio().get(
           url,
           options: Options(responseType: ResponseType.bytes));
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
        title: const Text('Universal Wallpaper'),
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
           Expanded(child: 
           Container(
            padding: const EdgeInsets.only(left: 75),
            child: Row(
              children: [
                
                Container(
                  
                  height: 48,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                  ),
                  
                  child:Center(
                    child: ElevatedButton(onPressed: (){
                     _save(url: widget.imagePath);
                    }, child: Text(
                            widget.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            
                           ),
                      ),
                  ) 
                ),
                
                const Padding(padding:EdgeInsets.all(5)),
                Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: IconButton(icon: const Icon(Icons.favorite_sharp,size: 35),
                  //color: Colors.white,
                  color: _hasBeenPressed ? const Color.fromARGB(255, 255, 17, 1) : Colors.white,
                  onPressed: () => {
                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                })
              },
                  )
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
import 'package:first_flutter_app/catagory_page.dart';
import 'package:first_flutter_app/favorite.dart';
// import 'package:first_flutter_app/catagory_page.dart';
import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            height: 57,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            // ignore: prefer_const_constructors
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.blue; //<-- SEE HERE
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyApp()),
                            );
                          },
                          icon: Icon(Icons.photo_library))),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.redAccent; //<-- SEE HERE
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                               context,
                                 MaterialPageRoute(builder: (context) => const CatagoryPage()),

                                 );
                          },
                          icon: Icon(Icons.category_sharp))),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.green; //<-- SEE HERE
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Favorite_1()),
                            );
                          },
                          icon: Icon(Icons.favorite))),
                ],
              ),
            )));
  }
}

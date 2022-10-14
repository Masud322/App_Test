import 'package:first_flutter_app/catagory_page.dart';
import 'package:first_flutter_app/favorite.dart';
// import 'package:first_flutter_app/catagory_page.dart';
import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({super.key, required this.pageId});
  final int pageId;

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            height: 60,
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
                      child: IconButton(
                          color: (widget.pageId == 0
                              ? Colors.black
                              : (widget.pageId == 1
                                  ? Colors.purple
                                  : Colors.black)),
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
                      child: IconButton(
                          color: (widget.pageId == 0
                              ? Colors.black
                              : (widget.pageId == 2
                                  ? Colors.green
                                  : Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CatagoryPage(pageId: 2)));
                          },
                          icon: Icon(
                            Icons.category_sharp,
                          ))),
                  ElevatedButton(
                    onPressed: () {},
                    child: IconButton(
                      color: (widget.pageId == 0
                          ? Colors.black
                          : (widget.pageId == 3 ? Colors.green : Colors.black)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Favorite_1(pageId: 3,)),
                        );
                      },
                      icon: Icon(Icons.favorite),
                    ),
                  ),
                ],
              ),
            )));
  }
}

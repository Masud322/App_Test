import 'dart:ui';

import 'package:first_flutter_app/about_page.dart';
import 'package:first_flutter_app/catagory_page.dart';
import 'package:first_flutter_app/favorite.dart';
import 'package:first_flutter_app/login_page.dart';
import 'package:first_flutter_app/main.dart';
import 'package:first_flutter_app/privacy_page.dart';
import 'package:first_flutter_app/signup.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          AppBar(
            title: (const Text('Universal Wallpaper')),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.category,
            ),
            title: const Text('Categories'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CatagoryPage(pageId: 4)),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.favorite,
            ),
            title: const Text('Favorite'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Favorite_1(pageId: 3,)),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.privacy_tip,
            ),
            title: const Text('Privacy Policy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PrivacyPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.add_a_photo,
            ),
            title: const Text('Add Your Photos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp_1()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.info,
            ),
            title: const Text('About'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
            ),
            title: const Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp_1()),
                    );
                  },
                  icon: const Icon(Icons.app_registration_rounded),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp_1()),
                      );
                    },
                    child: const Text(
                      'Register Here',
                      style: TextStyle(color: Color.fromARGB(255, 0, 140, 255)),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_flutter_app/about_page.dart';
import 'package:first_flutter_app/catagory_page.dart';
import 'package:first_flutter_app/favorite.dart';
import 'package:first_flutter_app/firebase/login.dart';
import 'package:first_flutter_app/firebase/widget.dart';
import 'package:first_flutter_app/main.dart';
import 'package:first_flutter_app/privacy_page.dart';
import 'package:first_flutter_app/firebase/signin.dart';
import 'package:first_flutter_app/uplod_form.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/uplod_form.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String Password;

  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;

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
                MaterialPageRoute(
                    builder: (context) => const CatagoryPage(pageId: 4)),
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
                MaterialPageRoute(
                    builder: (context) => const Favorite_1(
                          pageId: 3,
                        )),
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
                  if (user == null){
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signin()),
                );
                  }
                  else {
                    Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Uplode_Form_Page()),
              );
                  }
                  
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
          if (user == null)
            ListTile(
              leading: const Icon(
                Icons.login,
              ),
              title: const Text('Login / Sign In'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signin()),
                );
              },
            )
          else
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () async {
                try {
                  await _auth.signOut().then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp()),
                        ),
                      );
                  print('logout');
                } catch (e) {
                  print('Failed $e');
                }
              },
            )
        ],
      ),
    );
  }
}

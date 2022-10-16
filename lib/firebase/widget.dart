import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_flutter_app/firebase/login.dart';
import 'package:first_flutter_app/firebase/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class Widget_Page extends StatefulWidget {
  const Widget_Page({super.key, required this.context});
  final BuildContext context;

  @override
  State<Widget_Page> createState() => _Widget_PageState();
}

class _Widget_PageState extends State<Widget_Page> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
          height: 300,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "😍😍..HURRAH..😍😍",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Sign Up Successful 😊",
                style: TextStyle(fontSize: 15),
              ),
              const Text(
                "You May Login Now",
                style: TextStyle(fontSize: 15),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text('OK')),
            ],
          )),
    );
  }
}

class Forget_Page extends StatefulWidget {
  const Forget_Page({super.key, required this.context});
  final BuildContext context;
  @override
  State<Forget_Page> createState() => _Forget_PageState();
}

class _Forget_PageState extends State<Forget_Page> {
  final _auth = FirebaseAuth.instance;
  late String email;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
          height: 300,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    try {
                      await _auth.sendPasswordResetEmail(email: email).then(
                            (value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            ),
                          );
                    } catch (e) {
                      print('Failed $e');
                    }
                  },
                  child: const Text('Forget Password'))
            ],
          )),
    );
  }
}

class Buy_Page extends StatefulWidget {
  const Buy_Page({super.key, required this.context});
  final BuildContext context;

  @override
  State<Buy_Page> createState() => _Buy_PageState();
}

class _Buy_PageState extends State<Buy_Page> {

  final auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
          height: 300,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Please Buy Your Photo',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  if (user == null){
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signin()),
                );
                  }
                  else
                    showDialog(context: context, builder: (context) => Card_Page(context: context)
                   );
                  
                },
                icon: const Icon(Icons.credit_card_outlined), //icon data for elevated button
                label: const Text("Add Your Card"), //label text
              )
            ],
          )),
    );
  }
}
class Card_Page extends StatefulWidget {
  const Card_Page({super.key, required this.context});
  final BuildContext context;

  @override
  State<Card_Page> createState() => _Card_PageState();
}

class _Card_PageState extends State<Card_Page> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color.fromARGB(255, 154, 248, 47),
      child:
      Center(
        
          child: Text('Will be implemented later',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      
      ), 
      
    );
    
  }
}

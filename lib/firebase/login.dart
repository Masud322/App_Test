import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_flutter_app/firebase/widget.dart';
import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp()); 
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _auth = FirebaseAuth.instance;
  late String email;
  late String Password;

  // AlertDialog();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
      ),
      body: SingleChildScrollView (
        child: Center(
          child: Padding(padding: 
          const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(padding: EdgeInsets.only(right: 185),
              child:Text('UNIVARSAL',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.indigo,fontFamily: 'Shojumaru-Regular',decoration: TextDecoration.underline,decorationThickness: 2,decorationStyle: TextDecorationStyle.double),),),
              
              const Text('WALLPAPERS',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.purpleAccent,fontFamily: 'Shojumaru-Regular'),),
              const SizedBox(
                height: 60,
              ),
              const Text('LogIn',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
              const SizedBox(
                height: 30,
              ),
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
              Container(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  obscureText: true,
                  onChanged: (value) {
                    Password = value;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
              
              const SizedBox(height: 10,),

              TextButton(onPressed: (){
                showDialog(context: context, builder: (context) => Forget_Page(context: context)
                   );
              }, child: Text('Forget Password',style: TextStyle(color: Colors.blue),)),
      
              ElevatedButton(
                onPressed: () async{
              
      
              try{
                  await _auth.signInWithEmailAndPassword(email: email, password: Password).then((value) =>
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              ),
              
              );
                }
                catch(e){
                  print('Failed $e');
                }
              }, child: const Text('Login')),
              
              
            ],
          ),
          ),
        ),
      ),
    );
  }
}
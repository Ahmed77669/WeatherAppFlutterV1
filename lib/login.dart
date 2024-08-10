import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app1/signupButtonGoogle.dart';
import 'package:app1/signUpButton.dart';
import 'package:app1/createTextField.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}


class login extends StatefulWidget {
  const login({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavigationBar(
      //   backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentPageIndex = index;
      //     });
      //   },
      //   selectedIndex: currentPageIndex,
      //   destinations: const <Widget>[
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.home_outlined),
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       icon: Icon(Icons.map_outlined),
      //       label: 'Map',
      //     ),
      //     NavigationDestination(
      //       icon: Icon(Icons.settings),
      //       label: 'Settings',
      //     ),
      //   ],
      // ),
      body:
      Container(
        width: double.infinity,
        child:SingleChildScrollView(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 152
              ),
              Image(image: AssetImage('assets/app_icon.png'), width: 64,),
              SizedBox(height: 92,),
              createTextField('Email', false),
              SizedBox(height: 28,),

              createTextField('Password', true),
              SizedBox(height: 60,),


              signupButton('Log in'),
              SizedBox(height: 25,),
              Text('or',
                style: GoogleFonts.inter(fontSize: 16, color: Colors.grey),),
              SizedBox(height: 25,),
              signupButtonGoogle('Log in with google'),
              SizedBox(height: 86,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",style: GoogleFonts.inter(fontSize: 16,color: Colors.grey),),
                  Text('SignUp ',style: GoogleFonts.inter(fontSize: 16,color: Color.fromARGB(
                      255, 0, 117, 255)),),

                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 242, 242, 242),

    );
  }



}
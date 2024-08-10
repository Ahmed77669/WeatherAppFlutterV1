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
      home: signup(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}


class signup extends StatefulWidget {
  const signup({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<signup> {


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
            SizedBox(height: 82,),
            createTextField('Name', false),
            SizedBox(height: 28,),
            createTextField('Email', false),
            SizedBox(height: 28,),

            createTextField('Password', true),
            SizedBox(height: 28,),

            createTextField('Confirm Password', true),
            SizedBox(height: 32,),

            signupButton('Sign Up'),
            SizedBox(height: 25,),
            Text('or',
              style: GoogleFonts.inter(fontSize: 16, color: Colors.grey),),
            SizedBox(height: 25,),
            signupButtonGoogle('Sign Up with google'),
            SizedBox(height: 86,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ',style: GoogleFonts.inter(fontSize: 16,color: Colors.grey),),
                Text('Login ',style: GoogleFonts.inter(fontSize: 16,color: Color.fromARGB(
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
  //
  // Widget createTextField(String text, bool hide,) {
  //   return
  //     SizedBox(
  //       width: 400,
  //       child:
  //       TextField(
  //         obscureText: hide,
  //         decoration: InputDecoration(
  //           labelText: text,
  //           labelStyle: GoogleFonts.roboto(
  //               color: Color.fromARGB(255, 74, 74, 74),
  //               fontSize: 16
  //           ),
  //           filled: true,
  //           fillColor: Color.fromARGB(255, 229, 229, 234),
  //           border: OutlineInputBorder(
  //             borderRadius: BorderRadius.all(Radius.circular(4)),
  //             borderSide: BorderSide.none,
  //
  //           ),
  //           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  //         ),
  //
  //         style: const TextStyle(
  //             color: Color.fromARGB(255, 74, 74, 74), fontSize: 16),
  //       ),
  //
  //     );
  // }

  // Widget signupButton(String text) {
  //   return
  //     SizedBox(
  //       width: 342,
  //       height: 55,
  //       child: ElevatedButton(
  //         onPressed: () {},
  //
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: Color.fromARGB(255, 2, 120, 205),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(3),
  //           ),
  //         ),
  //         child: Text(
  //           text,
  //           style: GoogleFonts.inter(
  //             fontSize: 16,
  //             color: Colors.white,
  //           ),
  //         ),
  //
  //       ),
  //     );
  // }

  // Widget signupButtonGoogle(String text) {
  //   return
  //     SizedBox(
  //       width: 342,
  //       height: 55,
  //       child: ElevatedButton(
  //           onPressed: () {},
  //
  //           style: ElevatedButton.styleFrom(
  //             backgroundColor: Color.fromARGB(255, 255, 255, 255),
  //             shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(3),
  //               side: BorderSide(
  //                 color: Color.fromARGB(255, 2, 120, 205),
  //                 width: 1,
  //               ),
  //             ),
  //           ),
  //           child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 Image(image: AssetImage('assets/google_icon.png')),
  //
  //                 Text(
  //                   text,
  //                   style: GoogleFonts.inter(
  //                     fontSize: 16,
  //                     color: Color.fromARGB(255, 2, 120, 205),
  //                   ),
  //                 ),
  //               ])
  //       ),
  //     );
  // }
}
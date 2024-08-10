import 'package:app1/login.dart';
import 'package:app1/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // final TextEditingController searchController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: welcome(),
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class BottomToTopPageRoute extends PageRouteBuilder {
  final Widget page;

  BottomToTopPageRoute({required this.page})
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween.chain(CurveTween(curve: curve)));
      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}

class welcome extends StatefulWidget {
  // final TextEditingController searchController;
  //
  // const NavigationExample({super.key, required this.searchController});

  @override
  State<welcome> createState() => _NavigationExampleState();

  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
}



class _NavigationExampleState extends State<welcome> {


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
      body: Container(
        width: double.infinity,
        child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 289,
          ),
          Image(image: AssetImage('assets/app_icon.png'),width: 64,),
          SizedBox(height: 17,),
          Text('WeatherFlow',style: TextStyle(fontSize: 32),),
          SizedBox(height: 47,),
          Container(
            width: 340,
            height: 200,
            child:
          Text('Welcome to WeatherFlow – your personal weather companion. Get real-time weather updates and 5-day forecasts at your fingertips. Stay informed about the latest weather conditions and plan your day with ease',
              textAlign: TextAlign.center,
            style: GoogleFonts.sintony(fontSize: 16,color: Color.fromARGB(
              255, 142, 142, 147),),)

          ),
          SizedBox(height: 120,),
          SizedBox(
            width: 342,
          height: 55,
          child:ElevatedButton(
            onPressed: () {
              Navigator.push(context, BottomToTopPageRoute(page: signup()));
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 2, 120, 205),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            child: Text(
              'Sign Up',
              style: GoogleFonts.inter(
                fontSize: 16,
                color: Colors.white,
              ),
            ),

          ),
          ),
          SizedBox(height: 18,),
          SizedBox(
            width: 342,
            height: 55,
            child:ElevatedButton(
              onPressed: () {
                Navigator.push(context, BottomToTopPageRoute(page: login()));
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                  side: BorderSide(
                    color: Color.fromARGB(255, 2, 120, 205),
                    width: 1,
                  ),
                ),
              ),
              child:


              Text(
                'Log in',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Color.fromARGB(255, 2, 120, 205),
                ),
              ),

            ),
          ),
            ],
      ),
      ),
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
    );
  }
}

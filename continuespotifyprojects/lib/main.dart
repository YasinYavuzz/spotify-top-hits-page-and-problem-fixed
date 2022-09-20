
import 'package:continuespotifyprojects/widgets/home.dart';
import 'package:continuespotifyprojects/widgets/library.dart';
import 'package:continuespotifyprojects/widgets/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      
      
      
      
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

 onTap(index){
  setState(() {
    selectedIndex = index;
  });
 }
 final List<Widget> screens = [
  const HomeWidget(),
  const SearchWidget(),
  const LibraryWidget(),

 ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:  Colors.black,
      body: screens[selectedIndex],
        
        
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
        onTap: onTap,
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/home.png',
            color : selectedIndex == 0 ? Colors.green : Colors.white
            ),
            
            label: '',

          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/search.png',
              color : selectedIndex == 1 ? Colors.green : Colors.white
              //color: Colors.green,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/book.png',
            color : selectedIndex == 2 ? Colors.green : Colors.white),
            label: '',
          ),
        ],

        //selectedItemColor: Colors.amber[800],
      ), // This trailing comma makes auto-formatting nicer for build methods.
      
      
    );
  }
}

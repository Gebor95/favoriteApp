import 'package:favotiteapp/screens/profile_screen.dart';
//import 'package:favotiteapp/widgets/profile_widget.dart';
import 'package:favotiteapp/widgets/favourite_widget.dart';
import 'package:favotiteapp/widgets/home_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _selectedIndex = 0;
  static const List<Widget> screenoption =
  [
    HomeWidget(),
    FavoriteWidget(),
  SizedBox(),
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfileScreen()))
    
  ];
  static const List<Widget> titleoption =<Widget>[
    Text("Home"),
    Text("Favorite Items"),
    Text("Profile"),
    
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index == 2 ){
      _selectedIndex = 0;
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfileScreen()));
      }
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        toolbarHeight: 70.2,
        elevation: 0,
        title:  titleoption[_selectedIndex],
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 25),
        actions: const [  Padding(
          padding: EdgeInsets.only(right:8.0),
          child: Icon(Icons.favorite_rounded, color: Colors.red,),
        ),]
        
      ),
     body:screenoption[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
         onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        items: const  <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded), label: "Favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
       
        ),
        
    );
  }
}
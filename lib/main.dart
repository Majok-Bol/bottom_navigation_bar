import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  HomeScreenState createState()=>HomeScreenState();
}
class HomeScreenState extends State<HomeScreen>{
  //index to keep track of navbar clicked
  int _currentIndex=0;
  //store widgets content
  final List<Widget>_screens=[
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Profile')),

  ];
  //build the screen with navbar contents
@override
  Widget build(BuildContext context){
  return Scaffold(
    body:_screens[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
        onTap: (index)=>setState(()=>_currentIndex=index),
        items: const[
      BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.blue,),label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: 'Person'),
    ],),

  );
}
}
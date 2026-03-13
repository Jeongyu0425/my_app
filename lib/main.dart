import 'package:flutter/material.dart'; 
import 'screens/home_screen.dart';
import 'screens/photos_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/users_screen.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key}); 

  @override 
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      title: 'Photo Manager', 
      home: const MainNavigation(), 
    );
  }
}


class MainNavigation extends StatefulWidget{ 
const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState(); 
  
}
class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    PhotosScreen(),
    UsersScreen(),
    SettingsScreen(),
  ];

  final List<String> _titles = const [
    'Home',
    'Photos',
    'Users',
    'Settings',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Photos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
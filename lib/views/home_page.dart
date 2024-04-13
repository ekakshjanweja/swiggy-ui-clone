import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swiggy_ui_clone/main.dart';
import 'package:swiggy_ui_clone/views/dashboard.dart';
import 'package:swiggy_ui_clone/views/food_page.dart';
import 'package:swiggy_ui_clone/views/instamart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<Widget> body = const [
    Dashboard(),
    FoodPage(),
    InstamartPage(),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey.shade500,
        showSelectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.network(
                scale: 15,
                "https://i.pinimg.com/564x/b3/8a/a1/b38aa1b21050b0e769a97eb751d12829.jpg"),
            label: 'Swiggy',
          ),
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bowlFood),
            label: 'Food',
          ),
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bowlRice),
            label: 'Instamart',
          ),
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.utensils),
            label: 'Dineout',
          ),
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.creditCard),
            label: 'Credit Card',
          ),
        ],
      ),
    );
  }
}

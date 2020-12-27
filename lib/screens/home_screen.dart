import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/widgets/Home_Navigator.dart';
import 'package:flutter_travel_ui/widgets/Scroll_Navigator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _tapItem = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0), 
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 50),
          children: [
            Padding(
              padding: EdgeInsets.only(right: 120, left: 20, top: 30),
              child: Text(
                "What Would you Like to Find?",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(height: 20),
            Detector(),
            SizedBox(height: 20),
            Home()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _tapItem,
          onTap: (value) {
            setState(() {
              _tapItem = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 20,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://1.bp.blogspot.com/-ATCMA4tcSn0/X-KgXAuDUzI/AAAAAAAAGmQ/xq07D_7df34WlDzjBrr4jCLQyvQv3APtwCLcBGAsYHQ/s16000/1.jpeg'),
                  radius: 15,
                ),
                label: 'Baseem Issadeen'),
          ]),
    );
  }
}

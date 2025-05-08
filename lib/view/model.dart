import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taski/common/global_variables.dart';
import 'package:taski/common/widgets/header.dart';
import 'package:taski/view/createPage.dart';
import 'package:taski/view/searchPage.dart';
import 'package:taski/view/todoPage.dart';

class ModelPage extends StatefulWidget {
  const ModelPage({super.key});

  @override
  State<ModelPage> createState() => _ModelPageState();
}

class _ModelPageState extends State<ModelPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Aqui você pode trocar de página, usar Navigator.pushNamed ou setState
  }

  final List<String> _labels = ['Todo', 'Create', 'Search', 'Done'];
  final List<String> _icons = [
    'assets/images/todo.svg',
    'assets/images/create.svg',
    'assets/images/search.svg',
    'assets/images/done.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_white,
      body: Column(
        children: [
          const Header(),
          _selectedIndex == 0
              ? TodoPage()
              : _selectedIndex == 1
              ? Createpage()
              : _selectedIndex == 2
              ? SearchPage()
              : SearchPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: color_white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: color_blue,
        unselectedItemColor: color_textGrey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 8,
        items: List.generate(_labels.length, (index) {
          return BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _icons[index],
              color: _selectedIndex == index ? color_blue : color_textGrey,
              width: 24,
              height: 24,
            ),
            label: _labels[index],
          );
        }),
      ),
    );
  }
}

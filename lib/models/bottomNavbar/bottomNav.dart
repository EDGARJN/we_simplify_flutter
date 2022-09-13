import 'package:flutter/material.dart';
import 'package:kalokola_form/screens/history.dart';
import 'package:kalokola_form/screens/kalokolaForm.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var pages = [const ASETform(), const HistoryList()];
  var currentPage = 0;

  pageController(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: pageController,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "History")
      ]),

      body: pages[currentPage],
    );
  }
}

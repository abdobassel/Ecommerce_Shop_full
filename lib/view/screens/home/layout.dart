import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 15,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            MaterialButton(
              onPressed: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Home'),
                  Icon(Icons.home),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Home'),
                  Icon(Icons.home),
                ],
              ),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Home'),
                  Icon(Icons.home),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Home'),
                  Icon(Icons.home),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

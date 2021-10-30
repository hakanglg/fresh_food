import 'package:flutter/material.dart';

class FreshFoodView extends StatefulWidget {
  FreshFoodView({Key? key}) : super(key: key);

  @override
  _FreshFoodViewState createState() => _FreshFoodViewState();
}

class _FreshFoodViewState extends State<FreshFoodView> {
  final appBarTitle = "Cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory_outlined),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.quick_contacts_dialer_outlined),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("")),
        ],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        fixedColor: Colors.black,
      ),
    );
  }
}

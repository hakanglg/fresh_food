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
      appBar: AppBarM(),
      body: BodyCards(context),
      floatingActionButton: FloatActButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar AppBarM() {
    return AppBar(
      elevation: 0,
      title: Text(
        appBarTitle,
        style: Theme.of(context).textTheme.headline5,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  Column BodyCards(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              itemCount: 11,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: Key("s"),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(25, 15, 25, 5),
                    color: Colors.grey[300],
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: Center(child: Text("data"))),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              child: Text("CHECKOUT"),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.white,
              )),
        ),
      ],
    );
  }

  FloatingActionButton FloatActButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      backgroundColor: Colors.grey[700],
    );
  }

  BottomNavigationBar BottomNavBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.store_mall_directory_outlined),
          title: Text(""),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.quick_contacts_dialer_outlined), title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined), title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("")),
      ],
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.blueGrey,
      fixedColor: Colors.black,
    );
  }
}

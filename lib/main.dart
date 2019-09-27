import 'package:flutter/material.dart';

void main() => runApp(Appbonita());

class Appbonita extends StatelessWidget {
  static const String _title = 'No Twitter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  //static const TextStyle optionStyle =
    //  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    ListView(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
            ListTile(
              leading: Image.asset('assets/Yaranaika.jpeg', width:50),
              title: Text('Yaranaika  @Yaranika69'),
              subtitle: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/cards.png'),
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
            ListTile(
              leading: Image.asset('assets/Ashe.jpg', width:60),
              title: Text('Ashe  @AsheOwO'),
              subtitle: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/cards.png'),
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
            ListTile(
              leading: Image.asset('assets/widowm.jpg', width:60),
              title: Text('Widowmaker  @WidowMOwO'),
              subtitle: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset('assets/widow_gun.jpg'),
                  ),
                ],
                  )
                  ),
                ],
              ),
            ),
          ],
        ),

    Text(
      'Index 1: Search',
      //style: optionStyle,
    ),
    Text(
      'Index 2: Notifications',
      //style: optionStyle,
    ),
    Text(
      'Index 3: Messages',
      //style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        leading: Image.asset('assets/Yaranaika.jpeg'),
        title: const Text('Inicio'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.group_add),
        backgroundColor: Colors.lightBlue[700],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            title: Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[700],
        onTap: _onItemTapped,
      ),
    );
  }
}
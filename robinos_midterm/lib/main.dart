import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: new AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.transparent,
      ),

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Ben Robinos", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),), 
              accountEmail: new Text("bdprobinos@addu.edu.ph"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://drive.google.com/file/d/1VabeMf2jqIzBtMtvudZXXKN_Ul3WRKvK/view?usp=sharing"),
              ),
              decoration: new BoxDecoration(color: Colors.orange),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.vpn_key),
              title: Text("Change Password"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
            ),
          ],
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(),
            MyMenu(),
            MyMenu(),
            MyMenu(),
            MyMenu(),
            MyMenu(),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.blueGrey,
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset('assets/17.png'),   
    );
  }
}

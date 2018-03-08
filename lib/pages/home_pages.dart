import 'package:flutter/material.dart';
import './first_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Drawer'), backgroundColor: Colors.greenAccent[400],),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //Header for the mobile app
            new UserAccountsDrawerHeader(
                accountName: new Text("johua"),
                accountEmail: new Text("joshua@chipileconsultant.com"),
                currentAccountPicture: new GestureDetector(
                  onTap: () => print("This is the current User"),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage("https://www.hackersguild.org/uploads/files/joshua.jpg"),
                  ),
                ),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage("https://wallpapersite.com/images/pages/pic_w/5908.jpg"))
                ),
            ),
            // first page
            new ListTile(
              title: new Text("First page"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new firstPage("first paget")));
              },
            ),
            new Divider(),
            // Second page
            new ListTile(
              title: new Text("Second page"),
              trailing: new Icon(Icons.arrow_right),
            ),
            new Divider(),
            // cancel page
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel),
              onTap: () =>Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Center(
        child: new Text("HomePage", style: new TextStyle(fontSize: 40.0),),
      ),
    );
  }
}

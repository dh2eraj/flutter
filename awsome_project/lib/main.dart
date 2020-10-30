import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: Myapp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      // this is using for theme color and primaryswatch is collections of colors
    ),
  );
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Dheeraj Sharma'),
              accountEmail: Text("dhiru96027@gmail.com"),
              currentAccountPicture: //Image.network(
                  //"https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
                  CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
              ),
            ),
            // DrawerHeader(
            // child: Text(
            // 'Gmail',
            // style: TextStyle(color: Colors.red, fontSize: 20),
            // ),
            //decoration: BoxDecoration(color: Colors.white),
            //),
            ListTile(
              leading: Icon(Icons.all_inbox),
              title: Text('All inbox'),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text('Primary'),
            ),
            ListTile(
              leading: Icon(Icons.mobile_friendly),
              title: Text('Social'),
            ),
            ListTile(
              leading: Icon(Icons.tag),
              title: Text('Promtions'),
            ),
            ListTile(
              title: Text('All LABELS'),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred'),
            ),
            ListTile(
              leading: Icon(Icons.snooze),
              title: Text('Snoozed'),
            ),
            ListTile(
              leading: Icon(Icons.important_devices),
              title: Text('Important'),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Sent'),
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Schedule'),
            ),
            ListTile(
              leading: Icon(Icons.outbox),
              title: Text('Outbox'),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text('Drafts'),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Allmail'),
            ),
            ListTile(
              leading: Icon(Icons.not_accessible),
              title: Text('Spam'),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Bin'),
            ),
            ListTile(
              title: Text('GOOGLE APP'),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Calendar'),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contact'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settingd'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('help and feedback'),
            ),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,// this is for location of edit icon on screen of app
      floatingActionButton: FloatingActionButton(
        onPressed:
            () {}, // {apna joo v kaam hoga woo ye braket krega esh ke andar hin}
        child: Icon(Icons.edit),
      ),
    );
  }
}

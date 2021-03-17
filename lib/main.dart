import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('List View', style: new TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: MyListView(),
      ),
    );
  }
}


class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(

        color: Colors.black,
        context: context,

        tiles: [
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: new Text('Gift Card'),
            subtitle: new Text('This is available now'),
            onTap: (){
              print("First");
            },
          ),

          ListTile(
            leading: Icon(Icons.local_shipping),
            title: new Text('Shipping'),
            subtitle: new Text('Not Available'),
            onTap: (){
              print("Second");
            },
          ),


          ListTile(
            leading: Icon(Icons.home),
            title: new Text('Home'),
            subtitle: new Text('This is available now'),
            onTap: (){
              print("Third");
            },
          ),


          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: new Text('Gift Card'),
            subtitle: new Text('This is available now'),
            onTap: (){
              print("Fourth");
            },
          ),


          ListTile(
            leading: Icon(Icons.computer),
            title: new Text('computer'),
            subtitle: new Text('This is available now'),
            onTap: (){
              print("Fifth");
            },
          ),
        ],
      ).toList(),
    );
  }
}


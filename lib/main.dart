import 'package:flutter/material.dart';
import 'package:tabbar_widget/pages/contact.dart';
import 'package:tabbar_widget/pages/home.dart';
import 'package:tabbar_widget/pages/video.dart';

void main() {
  runApp(new MaterialApp(
    home: MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Video Tabs"),
        backgroundColor: Colors.deepOrange,
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.ondemand_video),
            ),
            new Tab(
              icon: new Icon(Icons.contacts),
            ),
          ],
          controller: controller,
        ),
      ),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new TabBarView(
            children: <Widget>[
              new Home(), new Video(),new Contact()
            ],
            controller: controller,
          ),
        ),
    )
    );
  }
}

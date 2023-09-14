import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  static const String _title = "Ejemplo del Drawer";

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),);
  }}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("BigCode"),
      backgroundColor: Colors.green,),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[DrawerHeader(
          decoration: BoxDecoration(
              color: Colors.green,),
        child: Text("Drawer Header",
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,),),),
        ListTile(
          leading: Icon(Icons.message),
          title: Text("Message"),),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("Profile",),),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("Settings",),), ],),),);}}
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ShowListFood extends StatefulWidget {
  @override
  _ShowListFoodState createState() => _ShowListFoodState();
}

class _ShowListFoodState extends State<ShowListFood> {
  FirebaseDatabase firebaseDatabase = FirebaseDatabase.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  void readData() async{
    print('readData Work!!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Text('Show List Food'),
      ),
      body: Text('body'),
    );
  }
}

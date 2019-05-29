import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';

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

  void readData() async {
    print('readData Work!!!');

    DatabaseReference databaseReference =
        firebaseDatabase.reference().child('FoodChild');
    await databaseReference.once().then((DataSnapshot dataSnapshop) {
      // print('Data ==> ${dataSnapshop.value}');
      Map<dynamic, dynamic> values = dataSnapshop.value;
      values.forEach((key, values){
        print(values['Name']);
      });
     

    });
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

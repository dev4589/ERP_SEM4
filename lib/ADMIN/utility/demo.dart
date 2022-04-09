import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DemoFirestore extends StatefulWidget {

  const DemoFirestore(
      {Key? key,})
      : super(key: key);

  @override
  State<DemoFirestore> createState() => _DemoFirestoreState();
}

class _DemoFirestoreState extends State<DemoFirestore> {
  // CollectionReference users = FirebaseFirestore.instance.collection('Example');
  late String fullName;
  late String company;
  late int age;

  @override
  void initState() {
    // TODO: implement initState
    fullName="Devansh";
    company="AGSHealth";
    age=24;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      CollectionReference users =
          FirebaseFirestore.instance.collection("Example");
      return users
          .add({
            "full_name": fullName,
            "company": company,
            'age': age
          })
          .then((value) => print("user added"))
          .catchError((error) => print("failed to add user: $error"));
    }

    return Scaffold(
      body: Container(
        width: 500,
        height: 300,
        alignment: Alignment.center,
        child: ListView(
          children: [
            TextField(
              onSubmitted: (value){
                setState(() {
                  fullName=value.toString();
                  print(value);
                });
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Name *',
              ),
            ),
            TextButton(
                onPressed: () async {
                  addUser();
                },
                child: Text("hello"))
          ],
        ),
      ),
    );
  }
}

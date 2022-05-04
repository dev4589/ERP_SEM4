import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LetsTry extends StatefulWidget {
  const LetsTry({Key? key}) : super(key: key);

  @override
  State<LetsTry> createState() => _LetsTryState();
}

String emp_no='4';
Map<String, dynamic> data={};

class _LetsTryState extends State<LetsTry> {
  String nameE='helllo';
  fireauth() async {
    final querySnapshot = await FirebaseFirestore
        .instance
        .collection('Staff')
        .where('emp_no', isEqualTo: emp_no)
        .get();
    for (var doc in querySnapshot.docs) {
      data = doc.data();
      nameE = data['source'];
    }
    print(nameE+" "+emp_no);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fireauth();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
            children:[
              Text(nameE),
            ])
    );
  }
}

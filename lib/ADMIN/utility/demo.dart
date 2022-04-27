// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// List<StudentInfo> listMap = [];
// int a = 1;

// class LetsTry extends StatelessWidget {
//   LetsTry({Key? key}) : super(key: key);

//   printF() {
//     print(1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // FirebaseFirestore.instance.collection("student_registration").get().then(
//     //   (value) {
//     //     value.docs.forEach(
//     //       (element) {
//     //         listMap.add(StudentInfo(element['first_name']));
//     //       },
//     //     );
//     //   },
//     // );
//     // listMap.add(StudentInfo('parth'));
//     FirebaseFirestore.instance
//         .collection('student_registration')
//         .get()
//         .then((QuerySnapshot querySnapshot) {
//       querySnapshot.docs.forEach((doc) {
//         // print(doc['first_name']);
//         listMap.add(StudentInfo(
//           doc['academic_year'],
//           // doc['address'],
//           // doc['blood_group'],
//           // doc['caste'],
//           // doc['current_addr'],
//           // doc['date_of_birth'],
//           // doc['email'],
//           // doc['father_annual_income'],
//           // doc['father_contactNo'],
//           // doc['father_education'],
//           // doc['father_email'],
//           // doc['father_name'],
//           // doc['father_occupation'],
//           // doc['father_office_addr'],
//           // doc['father_office_contact'],
//           // doc['first_name'].toString(),
//           // doc['gender'],
//           // doc['grNo'],
//           // doc['is_handicap'],
//           // doc['is_minority'],
//           // doc['last_name'],
//           // doc['middle_name'],
//           // doc['mobileNo'],
//           // doc['mother_annual_income'],
//           // doc['mother_contactNo'],
//           // doc['mother_education'],
//           // doc['mother_email'],
//           // doc['mother_name'],
//           // doc['mother_occupation'],
//           // doc['mother_office_addr'],
//           // doc['mother_office_contact'],
//           // doc['nationality'],
//           // doc['religion'],
//           // doc['state'],
//         ));
//       });
//     });
//     printF();
//     return Scaffold(
//         body: Container(
//             child: ListView(
//       children: [
//         Text(listMap.isEmpty.toString()),

//         // Text(listMap.isEmpty.toString()),
//         // Text(a.toString()),
//         // Text(listMap[0].first_name),
//         // Text(listMap[0].middle_name),
//         // Text(listMap[0].last_name),
//         // Text(listMap[0].date_of_birth),
//         // Text(listMap[0].academic_year),
//         // Text(listMap[0].blood_group),
//         // Text(listMap[0].gender),
//         // Text(listMap[0].nationality),
//         // Text(listMap[0].caste),
//         // Text(listMap[0].state),
//         // Text(listMap[0].address),
//         // Text(listMap[0].is_handicap),
//         // Text(listMap[0].is_minority),
//         // Text(listMap[0].grNo),
//         // Text(listMap[0].mobileNo),
//         // Text(listMap[0].email),
//         // Text(listMap[0].father_name),
//         // Text(listMap[0].father_occupation),
//         // Text(listMap[0].father_education),
//         // Text(listMap[0].father_annual_income),
//         // Text(listMap[0].father_email),
//         // Text(listMap[0].father_contactNo),
//         // Text(listMap[0].father_office_addr),
//         // Text(listMap[0].father_office_contact),
//         // Text(listMap[0].mother_name),
//         // Text(listMap[0].mother_occupation),
//         // Text(listMap[0].mother_education),
//         // Text(listMap[0].mother_annual_income),
//         // Text(listMap[0].mother_email),
//         // Text(listMap[0].mother_contactNo),
//         // Text(listMap[0].mother_office_addr),
//         // Text(listMap[0].mother_office_contact),
//         // Text(listMap[0].current_addr),
//         // Text(listMap[0].religion),
//       ],
//     )));
//   }
// }

// class StudentInfo {
//   // String first_name;
//   // String middle_name;
//   // String last_name;
//   // String date_of_birth;
//   String academic_year;
//   // String blood_group;
//   // String gender;
//   // String nationality;
//   // String caste;
//   // String state;
//   // String address;
//   // String is_handicap;
//   // String is_minority;
//   // String grNo;
//   // String mobileNo;
//   // String email;
//   // String father_name;
//   // String father_occupation;
//   // String father_education;
//   // String father_annual_income;
//   // String father_email;
//   // String father_contactNo;
//   // String father_office_addr;
//   // String father_office_contact;
//   // String mother_name;
//   // String mother_occupation;
//   // String mother_education;
//   // String mother_annual_income;
//   // String mother_email;
//   // String mother_contactNo;
//   // String mother_office_addr;
//   // String mother_office_contact;
//   // String current_addr;
//   // String religion;
//   StudentInfo(
//     this.academic_year,
//     //   this.address,
//     //   this.blood_group,
//     //   this.caste,
//     //   this.current_addr,
//     //   this.date_of_birth,
//     //   this.email,
//     //   this.father_annual_income,
//     //   this.father_contactNo,
//     //   this.father_education,
//     //   this.father_email,
//     //   this.father_name,
//     //   this.father_occupation,
//     //   this.father_office_addr,
//     //   this.father_office_contact,
//     //   this.first_name,
//     //   this.gender,
//     //   this.grNo,
//     //   this.is_handicap,
//     //   this.is_minority,
//     //   this.last_name,
//     //   this.middle_name,
//     //   this.mobileNo,
//     //   this.mother_annual_income,
//     //   this.mother_contactNo,
//     //   this.mother_education,
//     //   this.mother_email,
//     //   this.mother_name,
//     //   this.mother_occupation,
//     //   this.mother_office_addr,
//     //   this.mother_office_contact,
//     //   this.nationality,
//     //   this.religion,
//     //   this.state,
//   );
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LetsTry extends StatefulWidget {
  const LetsTry({Key? key}) : super(key: key);

  @override
  State<LetsTry> createState() => _LetsTryState();
}

class _LetsTryState extends State<LetsTry> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('student_registration').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return Row(
              children: [Text(data["first_name"])],
            );
          }).toList(),
        );
      },
    ));
  }
}

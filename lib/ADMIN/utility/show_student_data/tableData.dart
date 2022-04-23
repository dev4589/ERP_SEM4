import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class TableRow1 extends StatefulWidget {

  @override
  State<TableRow1> createState() => _TableRow1State();
}

class _TableRow1State extends State<TableRow1> {
  // final List<Map<String,dynamic>> map;
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> mapFromData=[];
    FirebaseFirestore.instance.collection("student_registration").get().then(
          (value) {
        value.docs.forEach(
              (element) {
            mapFromData.add(element.data());
            },
        );
      },
    );
    // print(mapFromData);
    var size = MediaQuery.of(context).size.width;
    return Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        defaultColumnWidth: size < 480
            ? FixedColumnWidth(120.0)
            : (size < 800)
            ? FixedColumnWidth(180.0)
            : FixedColumnWidth(250.0),
        border: TableBorder(
            horizontalInside: BorderSide(
                width: 1, color: Colors.black12, style: BorderStyle.solid)),
        children: [
          TableRow(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
              ),
              children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Student Registeration List"),
                  ),
                ),
                for (int i = 0; i < 31; i++) ...[
                  TableCell(
                    child: Text(""),
                  ),
                ]
              ]),
          TableCells(),
          // for(int i=0;i<mapFromData.length;i++)
          //   TableCells2(i),

        ]);
  }

//title of table
  TableRow TableCells() {
    return TableRow(children: [
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Status",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Student Name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mobile Number",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Email Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Date Of Birth",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Birth Place",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Academic Year",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Blood Group",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Gender",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Nationality",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Caste",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Sub Caste",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Non Creamylayer",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Physically Handicapped",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Minority",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Qualifying Exam board",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Qualifying Exam name",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Qualifying Exam Percentage",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Seat Number",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Passing Year",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "State",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "GR Number",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Gap Details",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Degree",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "University",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Branch",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Shift",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Year",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Batch",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Sub Batch",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father Name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father Occupation",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father Education",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Email address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Office address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Father's Office Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Annual Income",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother Name",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Occupation",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Education",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),

      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Email id",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mother's Office Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Mohter's Office Mobile no",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Annual Income",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),

      TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Current Address",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Transport",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
    ]);
  }

//real data
  TableRow TableCells2(int i) {
    List<Map<String,dynamic>> mapFromData=[];
    FirebaseFirestore.instance.collection("student_registration").get().then(
          (value) {
        value.docs.forEach(
              (element) {
            mapFromData.add(element.data());
            // print(element.data());
          },
        );
      },
    );
    Map<String , dynamic> map=mapFromData[i];
    // print(mapFromData.isEmpty);
    return TableRow(children: [
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              // "Admitted",
              map['status'],
              style: TextStyle(color: Colors.green),
            )),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['first_name'] +
                " " +
                map['middle_name'] +
                " " +
                map['last_name'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['address'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['mobileMo'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['email'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['date_of_birth'])),
      ),
      // TableCell(
      //   child: Padding(
      //       padding: const EdgeInsets.all(8.0), child: Text("Ahmedabad")),
      // ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['academic_year'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['blood_group'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['gender'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['nationality'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['caste'])),
      ),
      // TableCell(
      //   child: Padding(
      //       padding: const EdgeInsets.all(8.0), child: Text(map['subcaste'])),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Yes")),
      // ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['is_handicap'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map["is_minority"])),
      ),
      // TableCell(
      //   child: Padding(
      //       padding: const EdgeInsets.all(8.0), child: Text("Gujarat Board")),
      // ),
      // TableCell(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Text(
      //       "Qualifying Exam name",
      //       style: TextStyle(color: kPrimaryColor),
      //     ),
      //   ),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("73%")),
      // ),
      // TableCell(
      //   child:
      //   Padding(padding: const EdgeInsets.all(8.0), child: Text("G104650")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2017")),
      // ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['state'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0), child: Text(map['grNo'])),
      ),
      // TableCell(
      //   child:
      //   Padding(padding: const EdgeInsets.all(8.0), child: Text("No Gap")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("MCA")),
      // ),
      // TableCell(
      //   child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Gujarat Tech. University")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("IT")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("Noon")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("2021")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A")),
      // ),
      // TableCell(
      //   child: Padding(padding: const EdgeInsets.all(8.0), child: Text("A3")),
      // ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_name'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_occupation'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_education'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_contactNo'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_email'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_office_addr'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_office_contact'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['father_annual_income'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_name'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_occupation'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_education'])),
      ),

      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_contactNo'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_email'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_office_addr'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_office_contact'])),
      ),
      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map['mother_annual_income'])),
      ),

      TableCell(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(map["current_addr"])),
      ),
      // TableCell(
      //   //transport
      //   child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(map['transportation'])),
      // ),
    ]);
  }
}
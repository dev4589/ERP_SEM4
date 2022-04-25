import 'package:dropdown_search/dropdown_search.dart';
import 'package:erp_sem4/constants/constants.dart';
import 'package:erp_sem4/constants/dropdown_values.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudentAttendanceForm extends StatefulWidget {
  @override
  _StudentAttendanceFormState createState() => _StudentAttendanceFormState();
}



class _StudentAttendanceFormState extends State<StudentAttendanceForm> {
  String? selectedvalue="choose";
  Widget fadeAlertAnimation(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
  TextStyle gridviewtext = new TextStyle(fontSize: 16);
  String class2 = "";
  String section = "";
  String _adminssionno='1';
  String _rollno='1';
  String _name='Jay Savaliya';

  TextEditingController academicdate = TextEditingController();
  TextEditingController classname=TextEditingController();
  TextEditingController sectionc=TextEditingController();
  TextEditingController admisssionno=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController stu_name=TextEditingController();
  TextEditingController attendence=TextEditingController();
  TextEditingController note=TextEditingController();




  @override
  Widget build(BuildContext context) {
    CollectionReference attendance = FirebaseFirestore.instance.collection('Attendance');
    Future<void> addattendance() {
      // Call the user's CollectionReference to add a new user
      return attendance.add({
        'Class': classname.text,
        'Section': section,
        'Date': academicdate.text,
        'Admission_no': _adminssionno,
        'Roll_no': _rollno,
        'Student_name': _name,
        'Attendance': attendence.text,
        'Note': note.text,

      }).then((value) =>
          Alert(context: context, type: AlertType.info, title: "Attendence Added")
              .show()
              .catchError((error) => Alert(
              context: context,
              type: AlertType.info,
              title: "Failed To Add Attendence",
              alertAnimation: fadeAlertAnimation)));
//     Alert(
      //   context: context,
      //   type: AlertType.info,
      //   title: "Email can't be empty",
      //   desc: "please enter Email",
      //   alertAnimation: fadeAlertAnimation,
      // ).show()
// print("Staff Added"))
    }
    Size size = MediaQuery.of(context).size;

    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
    return Padding(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            duration: Duration(milliseconds: 200),
            height: size.height * 0.9,
            width: 1400,
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 40, top: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: kPrimaryColor,
                          ),
                          Text(" Back ",
                              style: TextStyle(color: kPrimaryColor)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                    child: Text(" Student Attendance",
                        style: TextStyle(fontSize: 20, color: kPrimaryColor)),
                  ),
                ]),
                Expanded(
                    child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                padding: (displayMobileLayout == true)
                                    ? EdgeInsets.only(
                                        left: 10, right: 10, bottom: 15)
                                    : (MediaQuery.of(context).size.width < 1024)
                                        ? EdgeInsets.only(
                                            left: 15, right: 25, bottom: 20)
                                        : EdgeInsets.only(
                                            left: 15, right: 30, bottom: 25),
                                width: MediaQuery.of(context).size.width,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  elevation: 5,
                                  child: Padding(
                                    padding: EdgeInsets.all(20),
                                    child: GridView.count(
                                      childAspectRatio: MediaQuery.of(context)
                                                  .size
                                                  .width >
                                              1024
                                          ? (1 / 0.18)
                                          : MediaQuery.of(context).size.width >
                                                  640
                                              ? (1 / 0.10)
                                              : (1 / 0.18),
                                      crossAxisCount: (displayMobileLayout ==
                                              true)
                                          ? 1
                                          : (MediaQuery.of(context).size.width <
                                                  1050)
                                              ? 1
                                              : (MediaQuery.of(context)
                                                          .size
                                                          .width <
                                                      1200)
                                                  ? 2
                                                  : 3,
                                      mainAxisSpacing: 0,
                                      crossAxisSpacing: 18,
                                      shrinkWrap: true,
                                      children: [
                                        DropdownSearch<String>(
                                          mode: Mode.MENU,
                                          //showSelectedItem: true,
                                          items: Dropdown.class2,
                                          label: "Select Class",
                                          dropdownSearchDecoration:
                                              InputDecoration(
                                                  border: InputBorder.none),
                                          // ...
                                          //controller:d,
                                          showSearchBox: true,
                                          onChanged: (val) {
                                            setState(() {
                                              class2 = val!;
                                            });
                                            classname.text=class2.toString();
                                          },
                                        ),
                                        DropdownSearch<String>(
                                          mode: Mode.MENU,
                                          //showSelectedItem: true,
                                          items: Dropdown.section,
                                          label: "Select Section",
                                          showSearchBox: true,
                                          onChanged: (val) {
                                            setState(() {
                                              section = val!;
                                            });
                                            sectionc.text=section.toString();
                                          },
                                          dropdownSearchDecoration:
                                              InputDecoration(
                                                  border: InputBorder.none),
                                        ),
                                        TextFormField(
                                          controller: academicdate,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                              //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                              labelText: "Date",
                                              hintText:
                                                  "Date Format must be DD-MM-YYYY",
                                              suffixIcon: IconButton(
                                                  onPressed: () async {
                                                    DateTime? date =
                                                        DateTime(1900);
                                                    FocusScope.of(context)
                                                        .requestFocus(
                                                            new FocusNode());
                                                    date = await showDatePicker(
                                                        helpText:
                                                            "Select Date Of Admission",
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(1900),
                                                        lastDate:
                                                            DateTime.now());
                                                    academicdate.text = date!
                                                            .day
                                                            .toString() +
                                                        "/" +
                                                        date.month.toString() +
                                                        "/" +
                                                        date.year.toString();
                                                  },


                                                  icon: Icon(Icons
                                                      .calendar_today_outlined))),
                                        ),
                                        if (MediaQuery.of(context).size.width >=
                                            1200)
                                          Text(""),
                                        if (MediaQuery.of(context).size.width >=
                                            1024)
                                          Text(""),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                padding: (displayMobileLayout == true)
                                    ? EdgeInsets.only(
                                        left: 0, right: 10, bottom: 15)
                                    : (MediaQuery.of(context).size.width < 1024)
                                        ? EdgeInsets.only(
                                            left: 15, right: 25, bottom: 20)
                                        : EdgeInsets.only(
                                            left: 15, right: 30, bottom: 25),
                                width: MediaQuery.of(context).size.width,
                                child: Card(
                                  elevation: 5,
                                  child: Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Student Attendance | Class : $class2 , Section : $section , Date : " +
                                                academicdate.text,
                                            style: gridviewtext),
                                        SizedBox(height: 20),
                                        Wrap(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            (size.width > 450)
                                                ? SizedBox(width: 20)
                                                : SizedBox(
                                                    width: 10, height: 10),
                                            FlatButton(
                                                height: 45,
                                                // minWidth: 190,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                                color: kPrimaryColor,
                                                onPressed: addattendance,
                                                child: Text(
                                                  "Save Attendance",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white),
                                                ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 5,
                                child: Padding(
                                    padding: EdgeInsets.all(20),
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Table(
                                          columnWidths: {
                                            0: FixedColumnWidth(120.0),
                                            1: FixedColumnWidth(120.0),
                                            2: FixedColumnWidth(120.0),
                                            // 4: FixedColumnWidth(.),
                                          },
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          defaultColumnWidth:
                                              FixedColumnWidth(550.0),
                                          border: TableBorder(
                                              horizontalInside: BorderSide(
                                                  width: 1,
                                                  color: Colors.black12,
                                                  style: BorderStyle.solid)),
                                          children: [
                                            TableRow(
                                                decoration: BoxDecoration(
                                                  color: kPrimaryColor
                                                      .withOpacity(0.2),
                                                ),
                                                children: [
                                                  TableCell(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child:
                                                          Text("Admission No"),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text("Roll No"),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child:
                                                          Text("Student Name"),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text("Attendance"),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text("Note Name"),
                                                    ),
                                                  ),
                                                ]),
                                            TableRow(children: [
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(_adminssionno),

                                                ),
                                              ),
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(_rollno),
                                                ),
                                              ),
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                      _name),
                                                ),
                                              ),
                                              TableCell(
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        Radio<String>(
                                                            activeColor:
                                                                Colors.blue,
                                                            value: "Present",
                                                            groupValue:selectedvalue,
                                                            onChanged:
                                                                (value) {
                                                              setState(() {
                                                                selectedvalue = value;
                                                              });
                                                              attendence.text=selectedvalue.toString();
                                                            }),
                                                        Text("Present"),
                                                        Radio<String>(
                                                            activeColor:
                                                                Colors.blue,
                                                            value: "Absent",
                                                            groupValue: selectedvalue,
                                                            onChanged:
                                                                (value) {
                                                              setState(() {
                                                                selectedvalue = value;
                                                              });
                                                              attendence.text=selectedvalue.toString();
                                                            }),
                                                        Text("Absent"),
                                                        // Radio(
                                                        //     activeColor:
                                                        //     Colors.blue,
                                                        //     value: 3,
                                                        //     groupValue: _val,
                                                        //   onChanged: (int? value){
                                                        //     _val= value!;
                                                        //   }),
                                                        // Text("Absent"),
                                                        // Radio(
                                                        //     activeColor:
                                                        //     Colors.blue,
                                                        //     value: 4,
                                                        //     groupValue: _val,
                                                        //     onChanged: (int? value){
                                                        //       _val= value!;
                                                        //     }),
                                                        // Text("Half Day"),
                                                      ],
                                                    )),
                                              ),
                                              TableCell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller: note,
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "Enter note here"),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ))),
                              )
                            ],
                          )),
                    ),
                  ],
                ))
              ],
            )),
          ),
        ),
      ),
    );
  }
}

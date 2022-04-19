import 'dart:developer';
import 'package:erp_sem4/constants/constants.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:flutter/material.dart';


class DailyWorkForm extends StatefulWidget {
  const DailyWorkForm({Key? key}) : super(key: key);



  @override
  _DailyWorkFormState createState() => _DailyWorkFormState();
}

class _DailyWorkFormState extends State<DailyWorkForm> {
  String dropdownValueClass = 'Choose Class';
  String dropdownValueSubject = 'Choose Subject';
  String dropdownValueType = 'Choose Type';
  String dropdownValueUnit = "Choose Unit";
  String dropdownValueChapter = "Choose Chapter";
  String dropdownValueTopic = "Choose Topic";
  TextEditingController _subtopic = TextEditingController();

  List<String> _classList = [
    'Choose Class',
    ' Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
    'Class 6',
    'Class 7',
    'Class 8',
    'Class 9',
    'Class10',
  ];
  List<String> _subjectList = [
    'Choose Subject',
    'Maths',
    'Science',
    'History',
    'Social Science',
    'Drawing',
    'Computer',
  ];
  List<String> _typeList = [
    'Choose Type',
    'Theory',
    'Practical',
  ];
  List<String> _unitList = [
    'Choose Unit',
    'Unit 1',
    'Unit 2',
    'Unit 3',
    'Unit 4',
    'Unit 5',
    'Unit 6',
  ];
  List<String> _chapterList = [
    'Choose Chapter',
    'Chapter 1',
    'Chapter 2',
    'Chapter 3',
    'Chapter 4',
    'Chapter 5',
    'Chapter 6',
  ];
  List<String> _topicList = [
    'Choose Topic',
    'Topic 1',
    'Topic 2',
    'Topic 3',
    'Topic 4',
    'Topic 5',
    'Topic 6',
  ];
  late int index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
    return Padding(
      padding: EdgeInsets.all(size.height > 770
          ? 64
          : size.height > 670
          ? 32
          : 16),
      child: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
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
              child: ListView(
                children: [
                  Row (
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 20, right: 40, top: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back),
                              Text(" Back ",
                                  style: TextStyle(color: kPrimaryColor)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                        child: Text("Daily Work",
                            style:
                            TextStyle(fontSize: 20, color: kPrimaryColor)),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SizedBox(
                        height: 400,
                        width: 700,
                        child: Card(
                          elevation: 5,
                          color: Color(0xfff8f9fa),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: ListView(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 15.0, left: 25),
                                child: Text("Choose Today's work",
                                    style: TextStyle(
                                        fontSize: 20, color: kPrimaryColor)),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 10.0, left: 20),
                                child: Form(
                                  child: ResponsiveGridRow(
                                    children: [
                                      ResponsiveGridCol(
                                        xl: 4,
                                        lg: 4,
                                        xs:12,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            child: DropdownButton(
                                                isExpanded: true,
                                                icon: const Icon(
                                                    Icons.arrow_downward),
                                                items: _classList.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                value: dropdownValueClass,
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    dropdownValueClass =
                                                    newValue!;
                                                  });
                                                }),
                                          ),
                                        ),
                                      ),
                                      ResponsiveGridCol(
                                        xl: 4,
                                        lg: 4,
                                        xs:12,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            child: DropdownButton(
                                                isExpanded: true,
                                                icon: const Icon(
                                                    Icons.arrow_downward),
                                                items: _subjectList.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                value: dropdownValueSubject,
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    dropdownValueSubject =
                                                    newValue!;
                                                  });
                                                }),
                                          ),
                                        ),
                                      ),
                                      ResponsiveGridCol(
                                        xl: 4,
                                        lg: 4,
                                        xs:12,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: DropdownButton(
                                              isExpanded: true,
                                              icon: const Icon(
                                                  Icons.arrow_downward),
                                              items: _typeList.map<
                                                  DropdownMenuItem<String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                              value: dropdownValueType,
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  dropdownValueType = newValue!;
                                                });
                                              }),
                                        ),
                                      ),
                                      ResponsiveGridCol(
                                        xl: 4,
                                        lg: 4,
                                        xs:12,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            child: DropdownButton(
                                                isExpanded: true,
                                                icon: const Icon(
                                                    Icons.arrow_downward),
                                                items: _unitList.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                value: dropdownValueUnit,
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    dropdownValueUnit =
                                                    newValue!;
                                                  });
                                                }),
                                          ),
                                        ),
                                      ),
                                      ResponsiveGridCol(
                                        xl: 4,
                                        lg: 4,
                                        xs:12,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            child: DropdownButton(
                                                isExpanded: true,
                                                icon: const Icon(
                                                    Icons.arrow_downward),
                                                items: _chapterList.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                value: dropdownValueChapter,
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    dropdownValueChapter =
                                                    newValue!;
                                                  });
                                                }),
                                          ),
                                        ),
                                      ),
                                      ResponsiveGridCol(
                                        xl: 4,
                                        lg: 4,
                                        xs:12,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            child: DropdownButton(
                                                isExpanded: true,
                                                icon: const Icon(
                                                    Icons.arrow_downward),
                                                items: _topicList.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    }).toList(),
                                                value: dropdownValueTopic,
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    dropdownValueTopic =
                                                    newValue!;
                                                  });
                                                }),
                                          ),
                                        ),
                                      ),
                                      ResponsiveGridCol(
                                        xl: 4,
                                        lg: 4,
                                        xs:12,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(
                                            controller: _subtopic,
                                            decoration: InputDecoration(
                                                label: Text("Sub-Topic"),
                                                hintText:
                                                "enter sub-topic name"),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                      height: 40,
                                      width: 200,
                                      child: FlatButton(
                                          height: 40,
                                          minWidth: 100,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(18.0)),
                                          color: kPrimaryColor,
                                          onPressed: () {
                                            print(
                                                '${"Class: " + dropdownValueClass + " Subject: " + dropdownValueSubject + " Type: " + dropdownValueType + " Unit: " + dropdownValueUnit + " Chapter: " + dropdownValueChapter + "  Topic: " + dropdownValueTopic + " Sub-Topic: " + _subtopic.text}');
                                          },
                                          child: Text(
                                            "Submit & Save",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white),
                                          )),
                                    )),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

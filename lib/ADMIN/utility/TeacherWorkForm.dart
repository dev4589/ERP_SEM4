import 'package:erp_sem4/constants/constants.dart';
import 'package:flutter/material.dart';

class TeacherWorkForm extends StatefulWidget {
  const TeacherWorkForm({Key? key}) : super(key: key);

  @override
  _TeacherWorkFormState createState() => _TeacherWorkFormState();
}

class _TeacherWorkFormState extends State<TeacherWorkForm> {
  String dropdownValue = 'Choose Filter';
  late int index = 0;
  List<Widget> showDetails = [
    Container(),
    University(),
    Faculty(),
    getyear(),
    getsubject()
  ];

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
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              duration: Duration(milliseconds: 200),
              height: size.height * 0.9,
              width: 1400,
              child: Center(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 40, top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              children: [
                                Icon(Icons.arrow_back),
                                Text(
                                  'Back',
                                  style: TextStyle(color: kPrimaryColor),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 40, right: 40, top: 20),
                          child: Text("Teacher's Work",
                              style: TextStyle(
                                  fontSize: 20, color: kPrimaryColor)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        height: 500,
                        width: 400,
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: ListView(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        width: 200,
                                        child: DropdownButton(
                                            isExpanded: true,
                                            icon: const Icon(
                                                Icons.arrow_downward),
                                            items: <String>[
                                              'Choose Filter',
                                              'University',
                                              'Faculty',
                                              'Year',
                                              'Subject'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            value: dropdownValue,
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownValue = newValue!;
                                                if (newValue == 'University') {
                                                  index = 1;
                                                }
                                                if (newValue == 'Faculty') {
                                                  index = 2;
                                                }
                                                if (newValue == 'Year') {
                                                  index = 3;
                                                }
                                                if (newValue == 'Subject') {
                                                  index = 4;
                                                }
                                              });
                                            }),
                                      ),
                                    ),
                                  ),
                                  showDetails[index]
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class University extends StatefulWidget {
  const University({Key? key}) : super(key: key);

  @override
  _UniversityState createState() => _UniversityState();
}

class _UniversityState extends State<University> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "sr.no": "1",
      "university": "GTU",
      "faculty_name": "pushpaa",
      "subject": "Science",
      "unit": "4",
      "topic": "human-body",
      "sub-topic": "1",
      "year": "2021"
    },
    {
      "sr.no": "2",
      "university": "INDUS",
      "faculty_name": "ramesh",
      "subject": "maths",
      "unit": "5",
      "topic": "addition",
      "sub-topic": "2",
      "year": "2022"
    },
    {
      "sr.no": "3",
      "university": "GU",
      "faculty_name": "parth",
      "subject": "stat",
      "unit": "6",
      "topic": "graph",
      "sub-topic": "4",
      "year": "2020"
    },
    {
      "sr.no": "4",
      "university": "GLS",
      "faculty_name": "ravi",
      "subject": "account",
      "unit": "3",
      "topic": "p&l account",
      "sub-topic": "3",
      "year": "2022"
    },
    {
      "sr.no": "5",
      "university": "GTU",
      "faculty_name": "jay",
      "subject": "social-science",
      "unit": "2",
      "topic": "cholas",
      "sub-topic": "2",
      "year": "2022"
    },
    {
      "sr.no": "6",
      "university": "GTU",
      "faculty_name": "jay",
      "subject": "social-science",
      "unit": "2",
      "topic": "british empire",
      "sub-topic": "2",
      "year": "2022"
    },
  ];
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) => user["university"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 450,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 10.0, bottom: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 400,
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                            labelText: 'Search',
                            hintText: "Enter University Name",
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? SizedBox(
                      height: 400,
                      child: ListView(
                        children: [
                          Card(
                            elevation: 4,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  child: DataTable(
                                    columns: <DataColumn>[
                                      DataColumn(
                                          label: Text(
                                        'Sr.no',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataColumn(
                                          label: Text('University',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Faculty Name',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Subject',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                        label: Text('Unit',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      DataColumn(
                                          label: Text('Topic',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Sub-Topic',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Year',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)))
                                    ],
                                    rows:
                                        _foundUsers // Loops through dataColumnText, each iteration assigning the value to element
                                            .map(
                                              ((element) => DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(Text(element[
                                                          "sr.no"])), //Extracting from Map element the value
                                                      DataCell(Text(element[
                                                          "university"])),
                                                      DataCell(Text(element[
                                                          "faculty_name"])),
                                                      DataCell(Text(
                                                          element["subject"])),
                                                      DataCell(Text(
                                                          element["unit"])),
                                                      DataCell(Text(
                                                          element["topic"])),
                                                      DataCell(Text(element[
                                                          "sub-topic"])),
                                                      DataCell(Text(
                                                          element["year"])),
                                                    ],
                                                  )),
                                            )
                                            .toList(),
                                  )),
                            ),
                          ),
                        ],
                        // itemCount: _foundUsers.length,
                        // itemBuilder: (context, index) =>
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class Faculty extends StatefulWidget {
  const Faculty({Key? key}) : super(key: key);

  @override
  _FacultyState createState() => _FacultyState();
}

class _FacultyState extends State<Faculty> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "sr.no": "1",
      "university": "GTU",
      "faculty_name": "pushpaa",
      "subject": "Science",
      "unit": "4",
      "topic": "human-body",
      "sub-topic": "1",
      "year": "2021"
    },
    {
      "sr.no": "2",
      "university": "INDUS",
      "faculty_name": "ramesh",
      "subject": "maths",
      "unit": "5",
      "topic": "addition",
      "sub-topic": "2",
      "year": "2022"
    },
    {
      "sr.no": "3",
      "university": "GU",
      "faculty_name": "parth",
      "subject": "stat",
      "unit": "6",
      "topic": "graph",
      "sub-topic": "4",
      "year": "2020"
    },
    {
      "sr.no": "4",
      "university": "GLS",
      "faculty_name": "ravi",
      "subject": "account",
      "unit": "3",
      "topic": "p&l account",
      "sub-topic": "3",
      "year": "2022"
    },
    {
      "sr.no": "5",
      "university": "GTU",
      "faculty_name": "jay",
      "subject": "social-science",
      "unit": "2",
      "topic": "cholas",
      "sub-topic": "2",
      "year": "2022"
    },
    {
      "sr.no": "6",
      "university": "GTU",
      "faculty_name": "jay",
      "subject": "social-science",
      "unit": "2",
      "topic": "british empire",
      "sub-topic": "2",
      "year": "2022"
    },
  ];
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) => user["faculty_name"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 450,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 10.0, bottom: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 400,
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                            labelText: 'Search',
                            hintText: "Enter Faculty Name",
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? SizedBox(
                      height: 400,
                      child: ListView(
                        children: [
                          Card(
                            elevation: 4,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  child: DataTable(
                                    columns: <DataColumn>[
                                      DataColumn(
                                          label: Text(
                                        'Sr.no',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataColumn(
                                          label: Text('University',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Faculty Name',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Subject',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                        label: Text('Unit',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      DataColumn(
                                          label: Text('Topic',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Sub-Topic',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Year',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)))
                                    ],
                                    rows:
                                        _foundUsers // Loops through dataColumnText, each iteration assigning the value to element
                                            .map(
                                              ((element) => DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(Text(element[
                                                          "sr.no"])), //Extracting from Map element the value
                                                      DataCell(Text(element[
                                                          "university"])),
                                                      DataCell(Text(element[
                                                          "faculty_name"])),
                                                      DataCell(Text(
                                                          element["subject"])),
                                                      DataCell(Text(
                                                          element["unit"])),
                                                      DataCell(Text(
                                                          element["topic"])),
                                                      DataCell(Text(element[
                                                          "sub-topic"])),
                                                      DataCell(Text(
                                                          element["year"])),
                                                    ],
                                                  )),
                                            )
                                            .toList(),
                                  )),
                            ),
                          ),
                        ],
                        // itemCount: _foundUsers.length,
                        // itemBuilder: (context, index) =>
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class getyear extends StatefulWidget {
  const getyear({Key? key}) : super(key: key);

  @override
  _getyearState createState() => _getyearState();
}

class _getyearState extends State<getyear> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "sr.no": "1",
      "university": "GTU",
      "faculty_name": "pushpaa",
      "subject": "Science",
      "unit": "4",
      "topic": "human-body",
      "sub-topic": "1",
      "year": "2021"
    },
    {
      "sr.no": "2",
      "university": "INDUS",
      "faculty_name": "ramesh",
      "subject": "maths",
      "unit": "5",
      "topic": "addition",
      "sub-topic": "2",
      "year": "2022"
    },
    {
      "sr.no": "3",
      "university": "GU",
      "faculty_name": "parth",
      "subject": "stat",
      "unit": "6",
      "topic": "graph",
      "sub-topic": "4",
      "year": "2020"
    },
    {
      "sr.no": "4",
      "university": "GLS",
      "faculty_name": "ravi",
      "subject": "account",
      "unit": "3",
      "topic": "p&l account",
      "sub-topic": "3",
      "year": "2022"
    },
    {
      "sr.no": "5",
      "university": "GTU",
      "faculty_name": "jay",
      "subject": "social-science",
      "unit": "2",
      "topic": "cholas",
      "sub-topic": "2",
      "year": "2022"
    },
    {
      "sr.no": "6",
      "university": "GTU",
      "faculty_name": "jay",
      "subject": "social-science",
      "unit": "2",
      "topic": "british empire",
      "sub-topic": "2",
      "year": "2022"
    },
  ];
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["year"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 450,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 10.0, bottom: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 400,
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                            labelText: 'Search',
                            hintText: "Enter year e.g 2022",
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? SizedBox(
                      height: 400,
                      child: ListView(
                        children: [
                          Card(
                            elevation: 4,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  child: DataTable(
                                    columns: <DataColumn>[
                                      DataColumn(
                                          label: Text(
                                        'Sr.no',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataColumn(
                                          label: Text('University',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Faculty Name',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Subject',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                        label: Text('Unit',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      DataColumn(
                                          label: Text('Topic',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Sub-Topic',
                                              style: TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      DataColumn(
                                          label: Text('Year',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)))
                                    ],
                                    rows:
                                        _foundUsers // Loops through dataColumnText, each iteration assigning the value to element
                                            .map(
                                              ((element) => DataRow(
                                                    cells: <DataCell>[
                                                      DataCell(Text(element[
                                                          "sr.no"])), //Extracting from Map element the value
                                                      DataCell(Text(element[
                                                          "university"])),
                                                      DataCell(Text(element[
                                                          "faculty_name"])),
                                                      DataCell(Text(
                                                          element["subject"])),
                                                      DataCell(Text(
                                                          element["unit"])),
                                                      DataCell(Text(
                                                          element["topic"])),
                                                      DataCell(Text(element[
                                                          "sub-topic"])),
                                                      DataCell(Text(
                                                          element["year"])),
                                                    ],
                                                  )),
                                            )
                                            .toList(),
                                  )),
                            ),
                          ),
                        ],
                        // itemCount: _foundUsers.length,
                        // itemBuilder: (context, index) =>
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class getsubject extends StatefulWidget {
  const getsubject({Key? key}) : super(key: key);

  @override
  _getsubjectState createState() => _getsubjectState();
}

class _getsubjectState extends State<getsubject> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "sr.no": "1",
      "university": "GTU",
      "faculty_name": "pushpaa",
      "subject": "Science",
      "unit": "4",
      "topic": "human-body",
      "sub-topic": "1",
      "year": "2021"
    },
    {
      "sr.no": "2",
      "university": "INDUS",
      "faculty_name": "ramesh",
      "subject": "maths",
      "unit": "5",
      "topic": "addition",
      "sub-topic": "2",
      "year": "2022"
    },
    {
      "sr.no": "3",
      "university": "GU",
      "faculty_name": "parth",
      "subject": "stat",
      "unit": "6",
      "topic": "graph",
      "sub-topic": "4",
      "year": "2020"
    },
    {
      "sr.no": "4",
      "university": "GLS",
      "faculty_name": "ravi",
      "subject": "account",
      "unit": "3",
      "topic": "p&l account",
      "sub-topic": "3",
      "year": "2022"
    },
    {
      "sr.no": "5",
      "university": "GTU",
      "faculty_name": "jay",
      "subject": "social-science",
      "unit": "2",
      "topic": "cholas",
      "sub-topic": "2",
      "year": "2022"
    },
    {
      "sr.no": "6",
      "university": "GTU",
      "faculty_name": "jay",
      "subject": "social-science",
      "unit": "2",
      "topic": "british empire",
      "sub-topic": "2",
      "year": "2022"
    },
  ];
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) => user["subject"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 450,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 10.0, bottom: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 400,
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: const InputDecoration(
                            labelText: 'Search',
                            hintText: "Enter Subject Name",
                            suffixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? SizedBox(
                      height: 400,
                      child: ListView(
                        children: [
                          Card(
                            elevation: 4,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                                decoration: BoxDecoration(border: Border.all()),
                                child: DataTable(
                                  columns: <DataColumn>[
                                    DataColumn(
                                        label: Text(
                                      'Sr.no',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    DataColumn(
                                        label: Text('University',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Faculty Name',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Subject',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                      label: Text('Unit',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    DataColumn(
                                        label: Text('Topic',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Sub-Topic',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    DataColumn(
                                        label: Text('Year',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)))
                                  ],
                                  rows:
                                      _foundUsers // Loops through dataColumnText, each iteration assigning the value to element
                                          .map(
                                            ((element) => DataRow(
                                                  cells: <DataCell>[
                                                    DataCell(Text(element[
                                                        "sr.no"])), //Extracting from Map element the value
                                                    DataCell(Text(
                                                        element["university"])),
                                                    DataCell(Text(element[
                                                        "faculty_name"])),
                                                    DataCell(Text(
                                                        element["subject"])),
                                                    DataCell(
                                                        Text(element["unit"])),
                                                    DataCell(
                                                        Text(element["topic"])),
                                                    DataCell(Text(
                                                        element["sub-topic"])),
                                                    DataCell(
                                                        Text(element["year"])),
                                                  ],
                                                )),
                                          )
                                          .toList(),
                                )),
                          ),
                        ],
                        // itemCount: _foundUsers.length,
                        // itemBuilder: (context, index) =>
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

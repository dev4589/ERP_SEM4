import 'dart:developer';
import 'package:erp_sem4/ADMIN/screens/login.dart';
import 'package:erp_sem4/ADMIN/screens/student_registration.dart';
import 'package:erp_sem4/ADMIN/screens/teacher_profile.dart';
import 'package:erp_sem4/constants/constants.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:getwidget/getwidget.dart';

import '../utility/pre_admission_module.dart';
import 'pre_admission.dart';
import 'show_student_registration.dart';
import 'student_profile.dart';

class Data {
  Data(this.Standard, this.TotalStudent, this.PresentStudent);

  final String Standard;
  final num TotalStudent;
  final num PresentStudent;
}

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;
  late TooltipBehavior _tooltipBehavior;
  late TooltipBehavior _tooltipBehavior1;
  late List<Data> _chartData;

  List<Color> tColor = List<Color>.generate(4, (i) => Colors.white);
  List<Color> titleColor = List<Color>.generate(4, (i) => Colors.black);
  List<Color> subtitleColor = List<Color>.generate(4, (i) => Colors.grey);
  List<Color> trailColor = List<Color>.generate(4, (i) => Colors.purple);

  double x = 0.0;
  double y = 0.0;

  List<Data> getDataChart() {
    final List<Data> chartData = [
      Data("class1A", 70, 60),
      Data("class1B", 50, 45),
      Data("class1C", 40, 35),
      Data("class2A", 65, 50),
      Data("class2B", 70, 60),
      Data("class2C", 85, 70),
      Data("class3A", 40, 25),
      Data("class3B", 50, 43),
      Data("class3C", 70, 63),
      Data("class4A", 60, 51),
      Data("class4B", 45, 39),
      Data("class4C", 85, 72),
    ];
    return chartData;
  }

  List<Map> feesData = [
    {
      'month': 'jan',
      'paidFees': 4400,
      'pendingFees': 3156,
      'totalFees': 5000,
      'expenses': 5200
    },
    {
      'month': 'feb',
      'paidFees': 6486,
      'pendingFees': 6472,
      'totalFees': 7000,
      'expenses': 4664
    },
    {
      'month': 'mar',
      'paidFees': 3466,
      'pendingFees': 6486,
      'totalFees': 4000,
      'expenses': 6841
    },
    {
      'month': 'apr',
      'paidFees': 5468,
      'pendingFees': 3164,
      'totalFees': 6000,
      'expenses': 6416
    },
    {
      'month': 'may',
      'paidFees': 6415,
      'pendingFees': 5411,
      'totalFees': 8000,
      'expenses': 6113
    },
    {
      'month': 'jun',
      'paidFees': 2654,
      'pendingFees': 3166,
      'totalFees': 5000,
      'expenses': 3416
    },
    {
      'month': 'jul',
      'paidFees': 3241,
      'pendingFees': 2134,
      'totalFees': 4000,
      'expenses': 3541
    },
    {
      'month': 'aug',
      'paidFees': 2341,
      'pendingFees': 5433,
      'totalFees': 8000,
      'expenses': 2153
    },
    {
      'month': 'sept',
      'paidFees': 5416,
      'pendingFees': 1313,
      'totalFees': 7000,
      'expenses': 1200
    },
    {
      'month': 'oct',
      'paidFees': 5414,
      'pendingFees': 4580,
      'totalFees': 7000,
      'expenses': 5225
    },
    {
      'month': 'nov',
      'paidFees': 3416,
      'pendingFees': 6541,
      'totalFees': 5000,
      'expenses': 4461
    },
    {
      'month': 'dec',
      'paidFees': 2541,
      'pendingFees': 3134,
      'totalFees': 4000,
      'expenses': 5466
    },
  ];

  List<Employee> getEmployeeData() {
    return [
      Employee(10001, 'James', 'Project Lead', 20000, 20000),
      Employee(10002, 'Kathryn', 'Manager', 30000, 20000),
      Employee(10003, 'Lara', 'Developer', 15000, 20000),
      Employee(10004, 'Michael', 'Designer', 15000, 20000),
      Employee(10010, 'Grimes', 'Developer', 15000, 20000)
    ];
  }

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    _tooltipBehavior1 = TooltipBehavior(enable: true);

    _chartData = getDataChart();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Student student =Provider.of<UserData>(context,listen:false).getStudentData();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // Colors.blue.shade50,

      backgroundColor: Colors.yellowAccent.shade100,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(right: 30.0, bottom: 10),
            child: ResponsiveGridRow(
              rowSegments: 12,
              children: [
                ResponsiveGridCol(
                    xl: 2,
                    child: SizedBox(
                      height: size.height,
                      child: ListView(children: [
                        SizedBox(
                          height: 100,
                          child: ListTile(
                            onTap: () {},
                            title: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 10, right: 10, bottom: 20),
                              child: Image.asset(
                                "assets/images/erp2logo.png",
                              ),
                            ),
                          ),
                        ),
                        Divider(),
                        GFAccordion(
                          title: "Student",
                          contentChild: Column(
                            children: [

                              ListTile(
                                onTap: () {
                                  Navigator.pushNamed(context, showRegDataR);
                                },
                                title: Text("Show Student Register Data",
                                    style: TextStyle(fontSize: 14)),
                              ),
                              // ListTile(
                              //   onTap: () {
                              //     Navigator.pushNamed(context, studProfR);
                              //   },
                              //   title: Text("Student Profile",
                              //       style: TextStyle(fontSize: 14)),
                              // ),
                              ListTile(
                                onTap: () {
                                  Navigator.pushNamed(context, studRegR);
                                },
                                title: Text("Student Registration",
                                    style: TextStyle(fontSize: 14)),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.pushNamed(context, feesdetail);
                                },
                                title: Text("Fees Details",
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                          expandedIcon: Icon(Icons.arrow_drop_down),
                        ),
                        GFAccordion(
                          title: "Teachers",
                          expandedIcon: Icon(Icons.arrow_drop_down),
                          contentChild: Column(
                            children: [

                              ListTile(
                                onTap: () {
                                  Navigator.pushNamed(context, showstaff);
                                },
                                leading: Text(
                                  "Show Faculty",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, staffRegistration);
                                },
                                leading: Text(
                                  "Staff Registration",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.pushNamed(context, teacherWork);
                                },
                                title: Text("Teacher's Work",
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ListTile(
                            tileColor: Colors.white,
                            leading: Icon(Icons.logout),
                            title: Text("Logout"),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LoginPage()));
                            },
                          ),
                        )
                      ]),
                    )),
                ResponsiveGridCol(
                  xl: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                        color: Colors.grey,
                      )),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 30.0, bottom: 20.0, left: 10.0, right: 10.0),
                          child: ResponsiveGridRow(
                            children: [
                              ResponsiveGridCol(
                                xs: 12,
                                child: Text(
                                    "Welcome- SMART SCHOOL|Super admin",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.indigo.shade800)),
                              ),
                            ],
                          ),
                        ),
                        ResponsiveGridRow(children: [
                          ResponsiveGridCol(
                            xs: 6,
                            md: 3,
                            child: MouseRegion(
                              onHover: (event) {
                                setState(() {
                                  x = event.position.dx;
                                  y = event.position.dy;
                                  tColor[0] = Colors.deepPurple.shade900;
                                  titleColor[0] = Colors.white;
                                  subtitleColor[0] = Colors.white;
                                  trailColor[0] = Colors.white;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  tColor[0] = Colors.white;
                                  titleColor[0] = Colors.black;
                                  subtitleColor[0] = Colors.grey;
                                  trailColor[0] = Colors.purple;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Card(
                                  color: tColor[0],
                                  shadowColor: Colors.blueAccent.shade100,
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(
                                        right: 8, left: 10, top: 8, bottom: 8),
                                    title: Text(
                                      'Students',
                                      style: TextStyle(color: titleColor[0]),
                                    ),
                                    subtitle: Text('Total Students',
                                        style:
                                            TextStyle(color: subtitleColor[0])),
                                    trailing: Text(
                                      '205',
                                      style: TextStyle(
                                        color: trailColor[0],
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ResponsiveGridCol(
                            xs: 6,
                            md: 3,
                            child: MouseRegion(
                              onHover: (event) {
                                setState(() {
                                  x = event.position.dx;
                                  y = event.position.dy;
                                  tColor[1] = Colors.deepPurple.shade900;
                                  titleColor[1] = Colors.white;
                                  subtitleColor[1] = Colors.white;
                                  trailColor[1] = Colors.white;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  tColor[1] = Colors.white;
                                  titleColor[1] = Colors.black;
                                  subtitleColor[1] = Colors.grey;
                                  trailColor[1] = Colors.purple;
                                });
                              },
                              child: Card(
                                color: tColor[1],
                                shadowColor: Colors.blueAccent.shade100,
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(8),
                                  title: Text(
                                    'Teachers',
                                    style: TextStyle(color: titleColor[1]),
                                  ),
                                  subtitle: Text('Total Teachers',
                                      style:
                                          TextStyle(color: subtitleColor[1])),
                                  trailing: Text(
                                    '35',
                                    style: TextStyle(
                                      color: trailColor[1],
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          ResponsiveGridCol(
                            xs: 6,
                            md: 3,
                            child: MouseRegion(
                              onHover: (event) {
                                setState(() {
                                  x = event.position.dx;
                                  y = event.position.dy;
                                  tColor[3] = Colors.deepPurple.shade900;
                                  titleColor[3] = Colors.white;
                                  subtitleColor[3] = Colors.white;
                                  trailColor[3] = Colors.white;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  tColor[3] = Colors.white;
                                  titleColor[3] = Colors.black;
                                  subtitleColor[3] = Colors.grey;
                                  trailColor[3] = Colors.purple;
                                });
                              },
                              child: Card(
                                color: tColor[3],
                                shadowColor: Colors.blueAccent.shade100,
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: ListTile(
                                  contentPadding: EdgeInsets.all(8),
                                  title: Text('Staffs',
                                      style: TextStyle(color: titleColor[3])),
                                  subtitle: Text('Total Staffs',
                                      style:
                                          TextStyle(color: subtitleColor[3])),
                                  trailing: Text(
                                    '60',
                                    style: TextStyle(
                                      color: trailColor[3],
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 30.0, bottom: 20.0, left: 10.0),
                          child: ResponsiveGridRow(
                            children: [
                              ResponsiveGridCol(
                                xl: 10,
                                child: Text(
                                  "Fees Data ",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.indigo.shade800),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              ResponsiveGridCol(
                                xs: 6,
                                xl: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.zoom_in_rounded,
                                        color: Colors.indigo.shade800,
                                      )),
                                ),
                              ),
                              ResponsiveGridCol(
                                xs: 6,
                                xl: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Icon(
                                          CupertinoIcons.multiply_circle_fill,
                                          color: Colors.indigo.shade800)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Card(
                            shadowColor: Colors.blueAccent.shade100,
                            elevation: 20,
                            child: SfCartesianChart(
                              tooltipBehavior: _tooltipBehavior1,
                              palette: const [
                                Colors.lightBlueAccent,
                                Colors.redAccent,
                                Colors.greenAccent,
                                Colors.purpleAccent
                              ],
                              legend: Legend(
                                  isVisible: true,
                                  position: LegendPosition.top,
                                  itemPadding: 30),
                              series: <ChartSeries>[
                                SplineSeries<Map, String>(
                                    dataSource: feesData,
                                    xValueMapper: (Map exp, _) => exp['month'],
                                    yValueMapper: (Map exp, _) =>
                                        exp['paidFees'],
                                    // markerSettings: const MarkerSettings(isVisible: true),
                                    name: 'Paid Fees'),
                                SplineSeries<Map, String>(
                                    dataSource: feesData,
                                    xValueMapper: (Map exp, _) => exp['month'],
                                    yValueMapper: (Map exp, _) =>
                                        exp['pendingFees'],
                                    // markerSettings: const MarkerSettings(isVisible: true),
                                    name: 'Pending Fees'),


                              ],
                              primaryXAxis: CategoryAxis(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 30.0, bottom: 20.0, left: 10.0),
                          child: ResponsiveGridRow(
                            children: [
                              ResponsiveGridCol(
                                xs: 12,
                                xl: 10,
                                child: Text(
                                  "Attendence Data",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.indigo.shade800),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              ResponsiveGridCol(
                                xl: 1,
                                xs: 6,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.zoom_in_rounded,
                                        color: Colors.indigo.shade800,
                                      )),
                                ),
                              ),
                              ResponsiveGridCol(
                                xl: 1,
                                xs: 6,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Icon(
                                        CupertinoIcons.multiply_circle_fill,
                                        color: Colors.indigo.shade800,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Card(
                              shadowColor: Colors.blueAccent.shade100,
                              elevation: 20,
                              child: SfCartesianChart(
                                tooltipBehavior: _tooltipBehavior,
                                margin: EdgeInsets.only(
                                    top: 15,
                                    right: 10.0,
                                    left: 10.0,
                                    bottom: 10.0),
                                backgroundColor: Colors.transparent,
                                plotAreaBorderWidth: 0.7,
                                palette: [
                                  Colors.purpleAccent.shade700,
                                  Colors.blueAccent.shade100
                                ],
                                title: ChartTitle(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                                legend: Legend(
                                    isVisible: true,
                                    position: LegendPosition.top),
                                series: <ChartSeries>[
                                  ColumnSeries<Data, String>(
                                    dataSource: _chartData,
                                    xValueMapper: (Data exp, _) => exp.Standard,
                                    yValueMapper: (Data exp, _) =>
                                        exp.TotalStudent,
                                    width: 0.4,
                                    name: 'Total Student',
                                    // dataLabelSettings: DataLabelSettings(isVisible: true),
                                    // markerSettings: const MarkerSettings(isVisible: false)
                                  ),
                                  ColumnSeries<Data, String>(
                                    dataSource: _chartData,
                                    xValueMapper: (Data exp, _) => exp.Standard,
                                    yValueMapper: (Data exp, _) =>
                                        exp.PresentStudent,
                                    width: 0.4,
                                    name: 'Present Student',
                                    // dataLabelSettings: DataLabelSettings(isVisible: true),
                                    // markerSettings: const MarkerSettings(),
                                  ),
                                ],
                                primaryXAxis: CategoryAxis(),
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class Employee {
  Employee(this.id, this.name, this.designation, this.salary, this.amount);

  final int id;
  final String name;
  final String designation;
  final int salary;
  final int amount;
}

class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'id', value: e.id),
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<String>(
                  columnName: 'designation', value: e.designation),
              DataGridCell<int>(columnName: 'salary', value: e.salary),
              DataGridCell<int>(columnName: 'salary', value: e.amount),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}

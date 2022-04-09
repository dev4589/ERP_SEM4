import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';


class StudDash extends StatefulWidget {
  const StudDash({Key? key}) : super(key: key);

  @override
  _StudDashState createState() => _StudDashState();
}

class _StudDashState extends State<StudDash> {
  final DataGridController _controller = DataGridController();
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    // TODO: implement initState
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ResponsiveGridRow(children: [
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    hoverColor: Colors.purple,
                    contentPadding: EdgeInsets.all(8),
                    title: Text('Students'),
                    subtitle: Text('Total Students'),
                    trailing: Text(
                      '205',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    title: Text('Teachers'),
                    subtitle: Text('Total Teachers'),
                    trailing: Text(
                      '205',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Card(

                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.purple,Colors.indigo]),borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8),
                      title: Text('Parents'),
                      subtitle: Text('Total Parents'),
                      trailing: Text(
                        '205',
                        style: TextStyle(
                          color: Colors.purple,
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
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8),
                    title: Text('Staffs'),
                    subtitle: Text('Total Staffs'),
                    trailing: Text(
                      '205',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Card(
              child: SfCartesianChart(
                palette: const [
                  Colors.lightBlueAccent,
                  Colors.redAccent,
                  Colors.greenAccent,
                ],
                legend: Legend(
                    isVisible: true,
                    position: LegendPosition.top,
                    itemPadding: 30),
                series: <ChartSeries>[
                  SplineSeries<Map, String>(
                      dataSource: feesData,
                      xValueMapper: (Map exp, _) => exp['month'],
                      yValueMapper: (Map exp, _) => exp['paidFees'],
                      // markerSettings: const MarkerSettings(isVisible: true),
                      name: 'Total Pipeline'),
                  SplineSeries<Map, String>(
                      dataSource: feesData,
                      xValueMapper: (Map exp, _) => exp['month'],
                      yValueMapper: (Map exp, _) => exp['pendingFees'],
                      // markerSettings: const MarkerSettings(isVisible: true),
                      name: 'Total Revenue'),
                  SplineSeries<Map, String>(
                      dataSource: feesData,
                      xValueMapper: (Map exp, _) => exp['month'],
                      yValueMapper: (Map exp, _) => exp['totalFees'],
                      // markerSettings: const MarkerSettings(isVisible: true),
                      name: 'Total Revenue'),
                  SplineSeries<Map, String>(
                      dataSource: feesData,
                      xValueMapper: (Map exp, _) => exp['month'],
                      yValueMapper: (Map exp, _) => exp['expenses'],
                      // markerSettings: const MarkerSettings(isVisible: true),
                      name: 'Total Expenses')
                ],
                primaryXAxis: CategoryAxis(),
              ),
            ),

            Card(
              child: SfDataGrid(
                onQueryRowHeight: (e) {
                  return 70;
                },
                controller: _controller,
                source: employeeDataSource,
                columnWidthMode: ColumnWidthMode.fill,
                columns: <GridColumn>[
                  GridColumn(
                      // width: size.width / (2),
                      columnName: 'id',
                      label: Container(
                          padding: EdgeInsets.only(top: 40, left: 24),
                          // alignment: Alignment.center,
                          child: Text(
                            'ID',
                          ))),
                  GridColumn(
                      columnName: 'name',
                      label: Container(
                          padding: EdgeInsets.only(top: 40, left: 24),
                          // alignment: Alignment.center,

                          child: Text('Name'))),
                  GridColumn(
                      columnName: 'designation',
                      label: Container(
                          padding: EdgeInsets.only(top: 40, left: 24),
                          // alignment: Alignment.center,
                          child: Text(
                            'Designation',
                          ))),
                  GridColumn(
                      columnName: 'salary',
                      label: Container(
                          padding: EdgeInsets.only(top: 40, left: 24),
                          // alignment: Alignment.center,
                          child: Text('Salary'))),
                  GridColumn(
                      columnName: 'amount',
                      label: Container(
                          padding: EdgeInsets.only(top: 40, left: 24),
                          // alignment: Alignment.center,
                          child: Text('Amount'))),
                ],
              ),

            ),
          ],
        ),
      ),
    );
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
        .map<DataGridRow>((e) => DataGridRow(
              cells: [
                DataGridCell<int>(columnName: 'id', value: e.id),
                DataGridCell<String>(columnName: 'name', value: e.name),
                DataGridCell<String>(
                    columnName: 'designation', value: e.designation),
                DataGridCell<int>(columnName: 'salary', value: e.salary),
                DataGridCell<int>(columnName: 'salary', value: e.amount),
              ],
            ))
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
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 24),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}

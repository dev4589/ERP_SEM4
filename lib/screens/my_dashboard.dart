import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({Key? key}) : super(key: key);

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  // late List abc = [];
  late List<PieChart> _chartData;
  late TooltipBehavior _tooltipBehavior;
  late TooltipBehavior _tooltipBehavior2;

  @override
  void initState() {
    _chartData = getChartDate();
    _tooltipBehavior = TooltipBehavior(enable: true);
    _tooltipBehavior2 = TooltipBehavior(enable: true);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> labels = [
      "Campaign Sent",
      "Deals",
      "New Leads",
      "Total Revenue"
    ];
    List<int> data = [9164, 861, 3689, 25400];
    List<int> data2 = [9000, 800, 3548, 24890];
    var tru0 = (data[0] * 100 / data2[0]) - 100;
    var tru1 = (data[1] * 100 / data2[1]) - 100;
    var tru2 = (data[2] * 100 / data2[2]) - 100;
    var tru3 = (data[3] * 100 / data2[3]) - 100;
    List<double> truList = [tru0, tru1, tru2, tru3];

    getColor(double perc) {
      if (perc < 0) {
        return Colors.red;
      }
      return Colors.green;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 150.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "CRM",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Hyper",
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 16,
                      color: Colors.grey,
                    ),
                    Text(
                      "Dashboard",
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 16,
                      color: Colors.grey,
                    ),
                    Text(
                      "CRM",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ResponsiveGridRow(
                children: [
                  for (int i = 0; i < 4; i++)
                    ResponsiveGridCol(
                      xl: 3,
                      lg: 3,
                      md: 4,
                      sm: 6,
                      xs: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 120,
                          child: Card(
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(labels[i],
                                            style: TextStyle(fontSize: 15)),
                                        Spacer(),
                                        Text(
                                          data2[i].toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Spacer(),
                                        Text(
                                          truList[i].toStringAsFixed(2),
                                          style: TextStyle(
                                              color: getColor(truList[i])),
                                        ),
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: Image.asset('ss${i + 1}.png'),
                                        )
                                      ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              ResponsiveGridRow(children: [
                ResponsiveGridCol(
                  xl: 5,
                  xs: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: SfCircularChart(
                        palette: const [
                          Colors.lightBlue,
                          Colors.deepOrangeAccent,
                          Colors.green,
                        ],
                        legend: Legend(
                            isVisible: true,
                            overflowMode: LegendItemOverflowMode.wrap,
                            position: LegendPosition.bottom),
                        tooltipBehavior: _tooltipBehavior,
                        series: <CircularSeries>[
                          RadialBarSeries<PieChart, String>(
                            dataSource: _chartData,
                            xValueMapper: (PieChart data, _) => data.category,
                            yValueMapper: (PieChart data, _) => data.value,
                            dataLabelSettings:
                                const DataLabelSettings(isVisible: true),
                            maximumValue: 8000,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                    xl: 7,
                    xs: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          child: SfCartesianChart(
                        palette: const [
                          Colors.lightBlueAccent,
                          Colors.greenAccent,
                        ],
                        legend: Legend(
                            isVisible: true, position: LegendPosition.bottom),
                        tooltipBehavior: _tooltipBehavior2,
                        series: <ChartSeries>[
                          SplineSeries<Map, String>(
                              dataSource: revData,
                              xValueMapper: (Map exp, _) => exp['month'],
                              yValueMapper: (Map exp, _) => exp['pipe'],
                              markerSettings:
                                  const MarkerSettings(isVisible: true),
                              name: 'Total Pipeline'),
                          SplineSeries<Map, String>(
                              dataSource: revData,
                              xValueMapper: (Map exp, _) => exp['month'],
                              yValueMapper: (Map exp, _) => exp['revVal'],
                              markerSettings:
                                  const MarkerSettings(isVisible: true),
                              name: 'Total Revenue')
                        ],
                        primaryXAxis: CategoryAxis(),
                      )),
                    ))
              ]),

              // Expanded(
              //   flex: 02,
              //   child: Container(),
              // ),
              // Expanded(
              //   flex: 53,
              //   child: Column(
              //     children: [
              //       Container(
              //         padding: const EdgeInsets.all(15),
              //         color: Colors.white,
              //         child: Column(
              //           children: [
              //             Row(
              //               children: const [
              //                 Text("Revenue"),
              //                 Spacer(),
              //                 Icon(
              //                   Icons.more_vert,
              //                   size: 20,
              //                 ),
              //               ],
              //             ),
              //             Container(
              //               margin: const EdgeInsets.symmetric(
              //                   vertical: 20),
              //               padding: const EdgeInsets.symmetric(
              //                   vertical: 20, horizontal: 100),
              //               color: Colors.grey.shade200,
              //               child: Row(
              //                 children: [
              //                   Column(
              //                     children: const [
              //                       // Records(),
              //                       Text(
              //                         'Current Month',
              //                       ),
              //                       Text(
              //                         '\$42,025',
              //                         style:
              //                         TextStyle(fontSize: 20),
              //                       ),
              //                     ],
              //                   ),
              //                   const Spacer(),
              //                   Column(
              //                     children: const [
              //                       Text(
              //                         'Previous Month',
              //                       ),
              //                       Text(
              //                         '\$74,651',
              //                         style:
              //                         TextStyle(fontSize: 20),
              //                       )
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  List<PieChart> getChartDate() {
    final List<PieChart> chartData = [
      PieChart('Ordered', 3153),
      PieChart('Reached', 1541),
      PieChart('Total Sent', 5354),
    ];
    return chartData;
  }

  List<Map> revData = [
    {'month': 'Jan', 'pipe': 440, 'revVal': 550},
    {'month': 'Feb', 'pipe': 550, 'revVal': 690},
    {'month': 'Mar', 'pipe': 310, 'revVal': 450},
    {'month': 'Apr', 'pipe': 470, 'revVal': 610},
    {'month': 'May', 'pipe': 310, 'revVal': 430},
    {'month': 'Jun', 'pipe': 430, 'revVal': 510},
    {'month': 'Jul', 'pipe': 260, 'revVal': 370},
    {'month': 'Aug', 'pipe': 410, 'revVal': 520},
    {'month': 'Sep', 'pipe': 310, 'revVal': 440},
    {'month': 'Oct', 'pipe': 470, 'revVal': 610},
    {'month': 'Nov', 'pipe': 330, 'revVal': 430},
    {'month': 'Dec', 'pipe': 430, 'revVal': 560},
  ];
}

class PieChart {
  PieChart(this.category, this.value);

  final String category;
  final int value;
}

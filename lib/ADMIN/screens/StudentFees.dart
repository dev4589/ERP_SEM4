import 'package:erp_sem4/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


void main() {
  runApp(MaterialApp(home: ShowFeesDeatails()));
}

TextEditingController classc=new TextEditingController();
TextEditingController division= new TextEditingController();
TextEditingController name= new TextEditingController();
TextEditingController payment= new TextEditingController();
TextEditingController amountc=new TextEditingController();
TextEditingController datec=new TextEditingController(text: DateTime.now().toString());
TextEditingController chequeno= new TextEditingController();
TextEditingController chequedate= new TextEditingController();
TextEditingController bankname= new TextEditingController();
TextEditingController bankaccount= new TextEditingController();
TextEditingController transaction= new TextEditingController();
TextEditingController patmenttype= new TextEditingController();
TextEditingController ddno= new TextEditingController();
TextEditingController ddDate= new TextEditingController();




class ShowFeesDeatails extends StatefulWidget {
  const ShowFeesDeatails({Key? key}) : super(key: key);

  @override
  _ShowFeesDeatailsState createState() => _ShowFeesDeatailsState();
}

class _ShowFeesDeatailsState extends State<ShowFeesDeatails> {


  late int index = 0;
  List<Widget> showDetails = [getCash(), getCheque(), getOnline(), getDd()];
  final _userid = TextEditingController();
  var name = "PARTH LASHKARI";
  var fatherName = "";
  var university = "Indus University";
  var courceName = "Mca";
  var dateOfBirth = '';
  var mobileNo = '';
  String dropdownValueClass = 'Choose Class';
  String dropdownValueDivision = 'Choose Division';
  String dropdownValueStudent = 'Choose Student';
  String dropdownValue = 'Payment Type';
  List<String> _DivisionList = ['Choose Division', 'A', 'B', 'C', 'D'];
  List<String> _StudentList = [
    'Choose Student',
    'Parth Lashkari',
    'Devansh Parmar',
    'Ravi kapadiya',
    'Hiral Panchal'
  ];

  List<String> _ClassList = [
    'Choose Class',
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
    'Class 6'
  ];
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
  @override
  Widget build(BuildContext context) {
    CollectionReference fees = FirebaseFirestore.instance.collection('fees');
    Future<void> addFees() {

      return fees.add({
        'Standard': classc.text,
        'Division': division.text,
        'Student_name': name,
        'Payment_mode': payment.text,
        'Amount': amountc.text,
        'Date': datec.text,
        'Cheque_no': chequeno.text,
        'Cheque_date': chequedate.text,
        'Bank_name': bankname.text,
        'Bank_account_no': bankaccount.text,
        'Transection_id': transaction.text,
        'Payment_Platform': patmenttype.text,
        'DD-No': ddno.text,
        'DD-Date': ddDate.text,

      }).then((value) =>
          Alert(context: context, type: AlertType.info, title: "Fees Record Added")
              .show()
              .catchError((error) => Alert(
              context: context,
              type: AlertType.info,
              title: "Failed To Add Record",
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
    //

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                width: size.width / 2,
                height: size.height,
                color: bColor,
              ),
              Container(
                  height: double.infinity,
                  width: size.width / 2,
                  color: Colors.white),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Container(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                            EdgeInsets.only(left: 20, right: 40, top: 20),
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
                            padding:
                            EdgeInsets.only(left: 40, right: 40, top: 20),
                            child: Text(" Fees Details ",
                                style: TextStyle(
                                    fontSize: 20, color: kPrimaryColor)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ResponsiveGridRow(children: [
                                ResponsiveGridCol(
                                  xl: 3,
                                  lg: 3,
                                  md: 6,
                                  xs: 8,
                                  sm: 7,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      child: DropdownButton(
                                          isExpanded: true,
                                          icon:
                                          const Icon(Icons.arrow_downward),
                                          items: _ClassList.map<
                                              DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                          value: dropdownValueClass,
                                          onChanged: (String? newValue) async{
                                            setState(() {
                                              dropdownValueClass = newValue!;

                                            });
                                            classc.text = dropdownValueClass.toString();
                                          }),
                                    ),
                                  ),
                                ),
                                ResponsiveGridCol(
                                  xl: 3,
                                  lg: 3,
                                  md: 6,
                                  xs: 8,
                                  sm: 7,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      child: DropdownButton(
                                          isExpanded: true,
                                          icon:
                                          const Icon(Icons.arrow_downward),
                                          items: _DivisionList.map<
                                              DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                          value: dropdownValueDivision,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValueDivision = newValue!;
                                            });
                                            division.text = dropdownValueDivision.toString();

                                          }),
                                    ),
                                  ),
                                ),
                                ResponsiveGridCol(
                                  xl: 3,
                                  lg: 3,
                                  md: 6,
                                  xs: 8,
                                  sm: 7,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      child: DropdownButton(
                                          isExpanded: true,
                                          icon:
                                          const Icon(Icons.arrow_downward),
                                          items: _StudentList.map<
                                              DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                          value: dropdownValueStudent,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValueStudent = newValue!;
                                            });
                                            name = dropdownValueStudent.toString();
                                          }),
                                    ),
                                  ),
                                ),

                                // ResponsiveGridCol(
                                //   xl: 2,
                                //   lg: 2,
                                //   md: 4,
                                //   xs: 4,
                                //   sm: 5,
                                //   child: Container(
                                //     padding: EdgeInsets.all(8.0),
                                //     child: SizedBox(
                                //       height: 40.0,
                                //       child: TextButton(
                                //         style: ButtonStyle(
                                //             backgroundColor:
                                //                 MaterialStateProperty.all(
                                //                     kPrimaryColor),
                                //             shape: MaterialStateProperty.all(
                                //                 RoundedRectangleBorder(
                                //                     borderRadius:
                                //                         BorderRadius.circular(
                                //                             30.0)))),
                                //         onPressed: () {},
                                //         child: const Text("Search User",
                                //             style:
                                //                 TextStyle(color: Colors.white)),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 20.0),
                              child: ResponsiveGridRow(
                                children: [
                                  ResponsiveGridCol(
                                      xl: 3,
                                      lg: 3,
                                      md: 4,
                                      xs: 12,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text("Class  : $dropdownValueClass",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),

                                        ],
                                      )),
                                  ResponsiveGridCol(
                                    xl: 3,
                                    lg: 3,
                                    md: 4,
                                    xs: 12,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text("Division  : $dropdownValueDivision",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),

                                      ],
                                    ),
                                  ),
                                  ResponsiveGridCol(
                                    xl: 3,
                                    lg: 3,
                                    md: 4,
                                    xs: 12,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text("Student Name: $dropdownValueStudent",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),


                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ResponsiveGridRow(children: [
                              ResponsiveGridCol(
                                xl: 3,
                                lg: 3,
                                md: 6,
                                xs: 8,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 50.0,
                                      left: 10.0,
                                      right: 10.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text("Payment Detail",
                                            style: TextStyle(
                                              color: kPrimaryColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                            )),
                                        Divider(
                                          thickness: 5,
                                          color: kPrimaryColor,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ]),
                            Card(
                              elevation: 16,
                              child: Column(
                                children: [
                                  ResponsiveGridRow(
                                    children: [
                                      ResponsiveGridCol(
                                        xl: 3,
                                        xs: 12,
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          child: DropdownButton<String>(
                                            isExpanded: true,
                                            value: dropdownValue,
                                            icon: const Icon(
                                                Icons.arrow_downward),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                dropdownValue = newValue!;
                                                if (newValue == 'Cash') {
                                                  index = 0;
                                                }
                                                if (newValue == 'Cheque') {
                                                  index = 1;
                                                }
                                                if (newValue == 'Online') {
                                                  index = 2;
                                                }
                                                if (newValue == 'DD') {
                                                  index = 3;
                                                }

                                              });
                                               payment.text = dropdownValue.toString();
                                            },
                                            items: <String>[
                                              'Payment Type',
                                              'Cash',
                                              'Cheque',
                                              'Online',
                                              'DD'
                                            ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ResponsiveGridRow(children: [
                                    ResponsiveGridCol(child: showDetails[index])
                                  ]),
                                  ResponsiveGridRow(
                                    children: [
                                      ResponsiveGridCol(
                                        xl: 1,
                                        lg: 2,
                                        md: 2,
                                        sm: 3,
                                        xs: 3,
                                        child: Container(
                                          margin: EdgeInsets.all(20),
                                          child: TextButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                MaterialStateProperty.all(
                                                    kPrimaryColor),
                                                shape: MaterialStateProperty
                                                    .all(RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        30.0)))),
                                            onPressed: addFees,
                                            child: const Text("Save",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      // body: MyStatefulWidget(),
    );
  }
}

class getCash extends StatefulWidget {
  const getCash({Key? key}) : super(key: key);

  @override
  _getCashState createState() => _getCashState();
}

class _getCashState extends State<getCash> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xl: 3,
            lg: 4,
            xs: 12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: amountc,
                decoration: const InputDecoration(
                    labelText: "Amount",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
              ),
            ),
          ),
          ResponsiveGridCol(
            xl: 3,
            lg: 4,
            xs: 12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: datec,
                decoration: const InputDecoration(
                    labelText: "Date",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                readOnly: true,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class getCheque extends StatefulWidget {
  const getCheque({Key? key}) : super(key: key);

  @override
  _getChequeState createState() => _getChequeState();
}

class _getChequeState extends State<getCheque> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: amountc,
              decoration: const InputDecoration(
                  labelText: "Amount",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: datec,

              decoration: const InputDecoration(
                  labelText: "Date",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              readOnly: true,
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: chequeno,
                decoration: const InputDecoration(
                    labelText: "Cheque No.",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))))),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: chequedate,
              decoration: const InputDecoration(
                  labelText: "Cheque Date",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: bankname,
              decoration: const InputDecoration(
                  labelText: "Bank Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: bankaccount,
              decoration: const InputDecoration(
                  labelText: "Bank Account No.",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
      ],
    );
  }
}

class getOnline extends StatefulWidget {
  const getOnline({Key? key}) : super(key: key);

  @override
  _getOnlineState createState() => _getOnlineState();
}

class _getOnlineState extends State<getOnline> {
  String dropdownValue = 'Choose Platform';

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: amountc,
              decoration: const InputDecoration(
                  labelText: "Amount",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: datec,

              decoration: const InputDecoration(
                  labelText: "Date",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: transaction,
                decoration: InputDecoration(
                    labelText: "Transaction id",
                    hintText: DateTime.now().toString(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))))),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              isExpanded: true,
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
                patmenttype.text = dropdownValue.toString();
              },
              items: <String>[
                'Choose Platform',
                'NEFT',
                'IMPS',
                'RTGS',
                'GOOGLE PAY',
                'PHONEPE',
                'BHIM',
                'PAYTM',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class getDd extends StatefulWidget {
  const getDd({Key? key}) : super(key: key);

  @override
  _getDdState createState() => _getDdState();
}

class _getDdState extends State<getDd> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: amountc,
              decoration: const InputDecoration(
                  labelText: "Amount",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: datec,

              decoration: const InputDecoration(
                  labelText: "Date",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              readOnly: true,
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ddno,
                decoration: const InputDecoration(
                    labelText: "DD No.",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))))),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ddDate,
              decoration: const InputDecoration(
                  labelText: "DD Date",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: bankname,
              decoration: const InputDecoration(
                  labelText: "Bank Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
        ResponsiveGridCol(
          xl: 3,
          lg: 4,
          xs: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: bankaccount,
              decoration: const InputDecoration(
                  labelText: "Bank Account No.",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
        ),
      ],
    );
  }
}

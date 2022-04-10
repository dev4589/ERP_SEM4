import '../constants/constants.dart';
import 'package:flutter/material.dart';

class TeacherProfileForm extends StatefulWidget {
  const TeacherProfileForm({Key? key}) : super(key: key);

  @override
  _TeacherProfileFormState createState() => _TeacherProfileFormState();
}

class _TeacherProfileFormState extends State<TeacherProfileForm> {
  String name="Raghav J chauhan";
  String caddress="461/2 Sarvoday Society,Navarangpura,Ahmedabad";
  String email="Raghav123@gmail.com";
  String gender="Male";
  String designation="Principal";
  String dateofjoin="25-5-2010";
  String dob="25-8-1994";
  String department="Academics";
  String mno="8460785654";
  String staffno="AFD8564";
  String fname="Jayeshbhai";
  String mname="Monaben";

  String epfno="DSA846073232";
  String salary="20000";
  String location="Pune";
  String meritalstatus="Married";
  String emno="8460785888";
  String paddress="461/2 Sarvoday Society,Navarangpura,Ahmedabad";
  String qualification="Post Graduation";
  String experience="5 Year";
  String bankname="Bank Of Baroda";
  String branchname="Pune";


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(size.height > 770
              ? 64:size.height > 670 ? 32 : 16),
          child:Center(
              child:Card(
                  elevation:4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child:AnimatedContainer(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      duration: Duration(milliseconds: 200),
                      height: size.height *0.9,
                      width: 1400,
                      child:Center(
                          child:Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                                  child: Row(children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: kPrimaryColor,
                                    ),
                                    Text(" Back", style: TextStyle(color: kPrimaryColor)),
                                  ]),
                                ),
                              ),
                              Expanded(
                                  child:ListView(
                                      children:[
                                        Padding(
                                            padding:EdgeInsets.all(40),
                                            child:Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(7),
                                                ),
                                                width: MediaQuery.of(context).size.width,
                                                child:Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(7),
                                                    ),
                                                    padding: (displayMobileLayout == true)
                                                        ? EdgeInsets.only(
                                                        top: 15, left: 10, right: 10, bottom: 15)
                                                        : (MediaQuery.of(context).size.width < 1024)
                                                        ? EdgeInsets.only(
                                                        top: 20, left: 25, right: 25, bottom: 20)
                                                        : EdgeInsets.only(
                                                        top: 25, left: 30, right: 30, bottom: 25),
                                                    width: MediaQuery.of(context).size.width,
                                                    child:Container(
                                                        alignment: Alignment.topLeft,
                                                        child:GridView.count(
                                                          childAspectRatio:
                                                          MediaQuery.of(context).size.width >=1200
                                                              ? (1 / 0.70)
                                                              : MediaQuery.of(context).size.width > 600
                                                              ? (1 / 0.80)
                                                              : (1 / 0.74),
                                                          crossAxisCount: (MediaQuery.of(context).size.width <700)
                                                              ? 1
                                                              : (MediaQuery.of(context).size.width < 1040)
                                                              ? 2
                                                              : 3,
                                                          mainAxisSpacing: 0,
                                                          crossAxisSpacing: 0,
                                                          shrinkWrap: true,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment.topCenter,
                                                              child: Padding(
                                                                padding:EdgeInsets.all(0),
                                                                child: Image.network(
                                                                  'data:image/jpeg;base64,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',
                                                                ),
                                                              ),
                                                            ),
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children:[
                                                                Text("PERSONAL DETAILS : ",style: TextStyle(fontSize: 20,color:kPrimaryColor),),
                                                                Divider(
                                                                  thickness: 5,
                                                                  color: kPrimaryColor,
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Name : ",style: TextStyle(fontSize: 17,),),
                                                                      Text(name),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Address : ",style: TextStyle(fontSize: 17,),),
                                                                      Container(
                                                                          width: 250,
                                                                          child: Text(caddress,overflow: TextOverflow.visible,
                                                                          )),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Email : ",style: TextStyle(fontSize: 17,),),
                                                                      Text(email),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Gender : ",style: TextStyle(fontSize: 17,),),
                                                                      Text(gender),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Designation : ",style: TextStyle(fontSize: 17,),),
                                                                      Text(designation),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Date Of Joining : ",style: TextStyle(fontSize: 17,),),
                                                                      Text(dateofjoin),
                                                                    ]
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children:[
                                                                if (MediaQuery.of(context).size.width >= 1040)
                                                                  Text(""),
                                                                if (MediaQuery.of(context).size.width >= 1040)
                                                                  Text(""),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Department : ",style: TextStyle(fontSize: 17,),),
                                                                       Text(department),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Date Of Birth : ",style: TextStyle(fontSize: 17,),),
                                                                       Text(dob),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Mobile No : ",style: TextStyle(fontSize: 17,),),
                                                                       Text(mno),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Staff No : ",style: TextStyle(fontSize: 17,),),
                                                                       Text(staffno),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Father name : ",style: TextStyle(fontSize: 17,),),
                                                                       Text(fname),
                                                                    ]
                                                                ),
                                                                SizedBox(height:8),
                                                                Row(
                                                                    children:[
                                                                      Text("Mother Name : ",style: TextStyle(fontSize: 17,),),
                                                                       Text(mname),
                                                                    ]
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children:[
                                                                  Text("OTHER DETAILS : ",style: TextStyle(fontSize: 20,color:kPrimaryColor),),
                                                                  Divider(
                                                                    thickness: 5,
                                                                    color: kPrimaryColor,
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("EPF No : ",style: TextStyle(fontSize: 17,),),
                                                                         Text(epfno),
                                                                      ]
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("Merital Status : ",style: TextStyle(fontSize: 17,),),
                                                                         Text(meritalstatus),
                                                                      ]
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("Qualification : ",style: TextStyle(fontSize: 17,),),
                                                                         Text(qualification),
                                                                      ]
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("Bank Name : ",style: TextStyle(fontSize: 17,),),
                                                                         Text(bankname),
                                                                      ]
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  if (MediaQuery.of(context).size.width >= 1040)
                                                                    Text(""),
                                                                  SizedBox(height:8),
                                                                  if (MediaQuery.of(context).size.width >= 1040)
                                                                    Text(""),

                                                                ]
                                                            ),
                                                            Column(
                                                                children:[
                                                                  if (MediaQuery.of(context).size.width >= 1040)
                                                                    Text(""),
                                                                  if (MediaQuery.of(context).size.width >= 1040)
                                                                    Text(""),

                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("Salary : ",style: TextStyle(fontSize: 17,),),
                                                                         Text(salary),
                                                                      ]
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("Emergency Contact no : ",style: TextStyle(fontSize: 17,),),
                                                                         Text(emno),
                                                                      ]
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("Experience : ",style: TextStyle(fontSize: 17,),),
                                                                        Text(experience),
                                                                      ]
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("Branch Name : ",style: TextStyle(fontSize: 17,),),
                                                                         Text(branchname),
                                                                      ]
                                                                  ),

                                                                ]
                                                            ),
                                                            Column(
                                                                children:[
                                                                  if (MediaQuery.of(context).size.width >= 1040)
                                                                    Text(""),
                                                                  if (MediaQuery.of(context).size.width >= 1040)
                                                                    Text(""),

                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("Location : ",style: TextStyle(fontSize: 17,),),
                                                                         Text(location),
                                                                      ]
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  Row(
                                                                      children:[
                                                                        Text("Permanent Address : ",style: TextStyle(fontSize: 17,),),
                                                                        Container(
                                                                          width: 150,
                                                                            child: Text(paddress,overflow: TextOverflow.visible,
                                                                            )),
                                                                      ]
                                                                  ),
                                                                  SizedBox(height:8),
                                                                  if (MediaQuery.of(context).size.width >= 1040)
                                                                    Text(""),
                                                                  SizedBox(height:8),
                                                                  if (MediaQuery.of(context).size.width >= 1040)
                                                                    Text(""),
                                                                ]
                                                            ),

                                                          ],
                                                        )
                                                    )
                                                )
                                            )
                                        )
                                      ]
                                  )
                              )
                            ],
                          )
                      )
                  )
              )
          )
      ),
    );
  }
}

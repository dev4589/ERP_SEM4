// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:erp_main_project/constants/dropdown_values.dart';
// import 'package:flutter/material.dart';
// import 'package:erp_main_project/constants/constants.dart';
//
// class AddBookForm extends StatefulWidget {
//   const AddBookForm({Key? key}) : super(key: key);
//
//   @override
//   _AddBookFormState createState() => _AddBookFormState();
// }
//
// class _AddBookFormState extends State<AddBookForm> {
//   TextEditingController booktitle = TextEditingController();
//   String bookcat = "Select Book Category";
//   String booksubject = "Select Subject";
//   TextEditingController accnum = TextEditingController();
//   TextEditingController isbnno = TextEditingController();
//   TextEditingController pubchildname = TextEditingController();
//   TextEditingController authorname = TextEditingController();
//   TextEditingController rackno = TextEditingController();
//   TextEditingController shelf = TextEditingController();
//   TextEditingController quantity = TextEditingController();
//   TextEditingController bookprice = TextEditingController();
//   TextEditingController bookdesc = TextEditingController();
//
//   CollectionReference addbook = FirebaseFirestore.instance.collection("book");
//   Future<void> add_book_details() {
//     return addbook.add({
//       'accession_num': accnum.text,
//       'author_name': authorname.text,
//       'book_category': bookcat,
//       'book_price': bookprice.text,
//       'book_title': booktitle.text,
//       'desc': bookdesc.text,
//       'isbn_no': isbnno.text,
//       'publisher_child_name': pubchildname.text,
//       'quantity': quantity.text,
//       'rac_no': rackno.text,
//       'shelf': shelf.text,
//       'subject': booksubject
//     }).catchError(
//         (error) => print("Failed to add user due to : " + error.message));
//     ;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     final bool displayMobileLayout = MediaQuery.of(context).size.width < 800;
//     return Padding(
//       padding: EdgeInsets.all(size.height > 770
//           ? 64
//           : size.height > 670
//               ? 32
//               : 16),
//       child: Center(
//         child: Card(
//           elevation: 4,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(25),
//             ),
//           ),
//           child: AnimatedContainer(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             duration: Duration(milliseconds: 200),
//             height: size.height * 0.9,
//             width: 1400,
//             child: Center(
//               child: Column(children: [
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                         child: Row(children: [
//                           Icon(
//                             Icons.arrow_back,
//                             color: kPrimaryColor,
//                           ),
//                           Text(" Back", style: TextStyle(color: kPrimaryColor)),
//                         ]),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 40, right: 40, top: 20),
//                       child: Text(" Add Book",
//                           style: TextStyle(fontSize: 20, color: kPrimaryColor)),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                     child: ListView(children: [
//                   Padding(
//                     padding: EdgeInsets.all(40),
//                     child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(7),
//                         ),
//                         //padding: (displayMobileLayout==true)?EdgeInsets.only(top:15,left: 10,right:10,bottom: 15):(MediaQuery.of(context).size.width<1024)?EdgeInsets.only(top:20,left: 25,right:25,bottom: 20):EdgeInsets.only(top:25,left: 30,right:30,bottom: 25),
//                         width: MediaQuery.of(context).size.width,
//                         child: Column(
//                           children: [
//                             Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(7),
//                               ),
//                               padding: (displayMobileLayout == true)
//                                   ? EdgeInsets.only(
//                                       top: 15, left: 10, right: 10, bottom: 15)
//                                   : (MediaQuery.of(context).size.width < 1024)
//                                       ? EdgeInsets.only(
//                                           top: 20,
//                                           left: 25,
//                                           right: 25,
//                                           bottom: 20)
//                                       : EdgeInsets.only(
//                                           top: 25,
//                                           left: 30,
//                                           right: 30,
//                                           bottom: 25),
//                               width: MediaQuery.of(context).size.width,
//                               child: Container(
//                                   child: GridView.count(
//                                 childAspectRatio: MediaQuery.of(context)
//                                             .size
//                                             .width >
//                                         1024
//                                     ? (1 / 0.18)
//                                     : MediaQuery.of(context).size.width > 640
//                                         ? (1 / 0.09)
//                                         : (1 / 0.13),
//                                 crossAxisCount: (displayMobileLayout == true)
//                                     ? 1
//                                     : (MediaQuery.of(context).size.width < 1050)
//                                         ? 1
//                                         : (MediaQuery.of(context).size.width <
//                                                 1200)
//                                             ? 2
//                                             : 3,
//                                 mainAxisSpacing: 0,
//                                 crossAxisSpacing: 18,
//                                 shrinkWrap: true,
//                                 children: [
//                                   TextFormField(
//                                     controller: booktitle,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Book Title",
//                                     ),
//                                   ),
//                                   DropdownButton<String>(
//                                     borderRadius: BorderRadius.circular(5),
//                                     hint: Text("Select Book Category"),
//                                     value: bookcat,
//                                     isExpanded: true,
//                                     items: Dropdown.bookcat.map((String val) {
//                                       return DropdownMenuItem<String>(
//                                         value: val,
//                                         child: Text(val),
//                                       );
//                                     }).toList(),
//                                     onChanged: (String? num) async {
//                                       if (num != null) {
//                                         setState(() {
//                                           bookcat = num;
//                                         });
//                                       }
//                                     },
//                                   ),
//                                   DropdownButton<String>(
//                                     borderRadius: BorderRadius.circular(5),
//                                     hint: Text("Select Subject"),
//                                     value: booksubject,
//                                     isExpanded: true,
//                                     items:
//                                         Dropdown.booksubject.map((String val) {
//                                       return DropdownMenuItem<String>(
//                                         value: val,
//                                         child: Text(val),
//                                       );
//                                     }).toList(),
//                                     onChanged: (String? num) async {
//                                       if (num != null) {
//                                         setState(() {
//                                           booksubject = num;
//                                         });
//                                       }
//                                     },
//                                   ),
//                                   TextFormField(
//                                     controller: accnum,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Accession Number",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: isbnno,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "ISBN No",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: pubchildname,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Publisher Child Name",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: authorname,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Author Name",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: rackno,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Rack Number",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: shelf,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Shelf",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: quantity,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Quantity",
//                                     ),
//                                   ),
//                                   TextFormField(
//                                     controller: bookprice,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Book Price",
//                                     ),
//                                   ),
//                                   if (MediaQuery.of(context).size.width >= 1200)
//                                     Text(""),
//                                   TextFormField(
//                                     controller: bookdesc,
//                                     maxLines: 5,
//                                     decoration: InputDecoration(
//                                       //border:OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//                                       labelText: "Description",
//                                     ),
//                                   ),
//                                   if (MediaQuery.of(context).size.width >= 1200)
//                                     Text(""),
//                                   if (MediaQuery.of(context).size.width >= 1200)
//                                     Text(""),
//                                   if (MediaQuery.of(context).size.width >= 1200)
//                                     Text(""),
//                                   Center(
//                                       child: FlatButton(
//                                           height: 45,
//                                           minWidth: 150,
//                                           shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(18.0)),
//                                           color: kPrimaryColor,
//                                           onPressed: () {
//                                             add_book_details();
//                                           },
//                                           child: Text(
//                                             "Save Book",
//                                             style: TextStyle(
//                                                 fontSize: 17,
//                                                 color: Colors.white),
//                                           )))
//                                 ],
//                               )),
//                             ),
//                           ],
//                         )),
//                   ),
//                 ]))
//               ]),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

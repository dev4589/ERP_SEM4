import 'package:cloud_firestore/cloud_firestore.dart';

class Dropdown {
  static List<String> gender = [
    "Select Gender",
    'Male',
    'Female',
    'Others',
  ];
  static List<String> intervals = [
    "Select Semister Intervals",
    'Yearly',
    'Half-Yearly',
    
  ];

  static List<String> selectyear=[
    "Select Academic Year",
    '2022','2021','2020','2019'
  ];
  static List<String> academicyear = [
    "Select Academic Year",
    '2022-2021',
    '2021-2020',
    '2020-2019',
    '2019-2018',
    '2018-2017',
  ];

  static List<String> dropdownrefSource =[
    "Select Sources",'Social Media','Student','News-paper','Pamphlet'
  ];
  static List<String> sources = [
    "Select Designation",
    'Teacher',
    'Principal',
    'Peon',
    'Clerk',
    'Security Guard',
    'Others',
  ];
  static List<String> bloodgrp = [
    "Select Blood Group",
    'A',
    'A+',
    'B',
    'B+',
    'O',
    'O+',
    'AB+',
    'AB+',
    'Others',
  ];
  static List<String> religion = [
    "Select Religion",
    'HINDU',
    'BUDDHISM',
    'CHRISTIAN',
    'ISLAM',
    'JAIN',
    'PARSI',
    'OTHERS',
  ];
  static List<String> noncrymelayer = [
    "Non Creamylayer Attached",
    'Yes',
    'No',
  ];
  static List<String> physically = [
    "Is Physically Handicapped",
    'Yes',
    'No',
  ];
  static List<String> minority = [
    "Is Minority",
    'Yes',
    'No',
  ];
  static List<String> feespck = [
    "Fees Package",
    'Yes',
    'No',
  ];
  static List<String> foccupation = [
    "Father's Occupation",
    'Self Employed',
    'Private Job',
    'Govt Job',
    'Others'
  ];
  static List<String> feducation = [
    "Father's Education",
    '10TH',
    '12Th',
    'Graduation',
    'Post Graduation'
  ];
  static List<String> moccupation = [
    "Mother's Occupation",
    'Self Employed',
    'Private Job',
    'Govt Job',
    'Others'
  ];
  static List<String> meducation = [
    "Mother's Education",
    '10TH',
    '12Th',
    'Graduation',
    'Post Graduation'
  ];
  static List<String> transport = [
    'Transport',
    'Yes',
    'No',
  ];
  static List<String> role = [
    "Select Role",
    'Driver',
    'Librarian',
    'Receptionist',
    'Accountant',
    'Admin',
    'Teacher'
  ];
  static List<String> department = [
    "Department",
    'Admin',
    'Management',
    'Academics'
  ];
  static List<String> designation = [
    "Designation",
    'Accountant',
    'Admin/Front Office',
    'Director',
    'HOD',
    'Principal',
    'Teacher',
    "Vice Principal"
  ];
  static List<String> meritalst = [
    "Merital Status",
    'Married',
    'Unmarried',
  ];
  static List<String> contract = [
    "Contract Type",
    'Parmanent',
    'Contract',
  ];
  static List<String> degree = [
    "Degree",
    "BCA",
    "MCA",
    "BBA",
    'MBA',
    'BSC',
  ];
  static List<String> university = [
    "University",
    "Pune",
    "Gujarat",
    "Mumbai",
    'Indus',
    'Symbosis',
  ];
  static List<String> universities = [];
  static List<String> branch = [
    "Branch",
    "CE",
    "ME",
    "MC",
    'IS',
  ];
  static List<String> shift = [
    "Shift",
    "Morning",
    "Noon",
    "Evening",
  ];
  static List<String> year = [
    "Year",
    "1st Year",
    "2nd Year",
    "3rd Year",
  ];
  static List<String> batch = ["Batch", "A", "B", "C", "D"];
  static List<String> subbatch = [
    "Sub Batch",
    "A1",
    "A2",
    "B1",
    "B2",
    "C1",
    "D1",
  ];

  // add_book_module's Dropdown list :
  static List<String> bookcat = [
    "Select Book Category",
    'Hindu Literature',
    'English Literature',
    'Mathematics',
    'Science',
    'Marathi Literature',
    'Social Science',
  ];
  static List<String> booksubject = [
    "Select Subject",
    'Mathematics',
    'English',
    'Hindi',
    'Science',
  ];
  // class_timetable's Dropdown :
  static List<String> teacher = [
    "M.K.Shah",
    "B.M.Patel",
    "S.S.trivedi",
    'A.P.Patel',
    'P.K.Chauhan',
  ];
  static List<String> departmentclass = [
    "IT",
    "Computer",
    "Electrical",
  ];
  static List<String> class2 = [
    "NURSERY",
    "LKG",
    "UKG",
    "1ST CLASS",
    "2ND CLASS",
    "3RD CLASS",
    "4TH CLASS",
    "5TH CLASS",
    "6TH CLASS",
    "7TH CLASS",
    "8TH CLASS",
    "9TH CLASS",
    "10TH CLASS",
  ];
  static List<String> section = [
    "A",
    "B",
    "C",
    'D',
  ];
  // fees_type's Dropdown :
  static List<String> fgroup = [
    "Fees Group",
    "Pre School",
    "Second Fees",
    "Class 1",
    "Class 2",
  ];
  // fees_master's Dropdown :
  static List<String> ftype = [
    "Fees Type",
    "Tuition Fees",
    "5th STD Tuition Fees"
  ];
  //// fees_Coolect's Dropdown :
  static List<String> class3 = [
    "Select Class",
    "NURSERY",
    "LKG",
    "UKG",
    "1ST CLASS",
    "2ND CLASS",
    "3RD CLASS",
    "4TH CLASS",
    "5TH CLASS",
    "6TH CLASS",
    "7TH CLASS",
    "8TH CLASS",
    "9TH CLASS",
    "10TH CLASS",
  ];
  static List<String> course = [
    "MCA",
    "BBA",
    "MBA",
    "BCA",
  ];

  static List<String> section2 = ["Select Section", "A", "B", "C", "D"];
  //add_role page :
  static List<String> user = ["Sahil", "Ram", "Zeel"];
  static List<String> userrole = [
    'Librarian',
    'Receptionist',
    'Student',
    'Admin',
    'Teacher'
  ];
  static List<String> sem = [
    'sem 1',
    'sem 2',
    'sem 3',
    'sem 4',
    'sem 5',
    'sem 6',
    'sem 7',
    'sem 8',
    'sem 9',
    'sem 10'
  ];
//   getUniversities() async {
//     await FirebaseFirestore.instance
//         .collection('Universities')
//         .get()
//         .then((value) {
//       if (value.data()!= null) {
//         for (var i = 0; i < snapshot.data!.size.toInt(); i++);
//       }
//     });
//   }
}

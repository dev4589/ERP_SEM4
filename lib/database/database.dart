import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/student_details_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Database {
  final databaseReference = FirebaseFirestore.instance;
  // login user
  Future<List<dynamic>> login(String userName, String password) async {
    List<dynamic> val = ['', ''];
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: userName + '@iibm.com', password: password)
          .then(
        (value) async {
          try { 
            await databaseReference
                .collection('Users')
                .doc(userName)
                .get()
                .then(
              (value) async {
                if (value.data() != null) {
                  val[0] = value;
                }
              },
            );
          } catch (e) {
            print(
              e.toString(),
            );
          }
        },
      );
    } catch (e) {
      val[0] = 1;
      val[1] = e.toString();
    }
    return val;
  }

  addStudents(Map<String, dynamic> studentDetails) async {
    await databaseReference
        .collection('Users')
        .doc(studentDetails['uid'])
        .set(studentDetails);
  }

  Future<QuerySnapshot> getStudentData(String? studentUID) {
    return databaseReference
        .collection('Users')
        .where('uid', isEqualTo: studentUID)
        .get();
  }

  Future<QuerySnapshot> getStudentDocumentDetails(String? studentUID) {
    return databaseReference
        .collection('Users')
        .doc(studentUID)
        .collection('documents')
        .get();
  }

  Future<void> addDocument(
      Student? student, String fileName, String fileURL) async {
    await databaseReference
        .collection("Users")
        .doc(student!.uid)
        .collection("documents")
        .doc(fileName)
        .set({
      "fileUrl": fileURL,
      "fileName": fileName + ".pdf",
      "uid": student.uid,
    });
  }
}

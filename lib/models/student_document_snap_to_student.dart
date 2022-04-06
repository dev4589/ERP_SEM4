import '../models/student_details_model.dart';

class ConvertSnapshotToStudent {
  Student cStudent = Student();

  ConvertSnapshotToStudent(dynamic student) {
    cStudent.role = student.data()['role'] ?? "";
    cStudent.firstName = student.data()['firstName'] ?? "";
    cStudent.middleName = student.data()['middleName'] ?? "";
    cStudent.lastName = student.data()['lastName'] ?? "";
    cStudent.studentUniversity = student.data()['studentUniversity'] ?? "";
    cStudent.studentCourse = student.data()['studentCourse'] ?? "";
    cStudent.studentBranch = student.data()['studentBranch'] ?? "";
    cStudent.courseYear = student.data()['courseYear'] ?? "";
    cStudent.dob = student.data()['dob'] ?? "";
    cStudent.academicYear = student.data()['academicYear'] ?? "";
    cStudent.birthPlace = student.data()['birthPlace'] ?? "";
    cStudent.bloodGroup = student.data()['bloodGroup'] ?? "";
    cStudent.gender = student.data()['gender'] ?? "";
    cStudent.nationality = student.data()['nationality'] ?? "";
    cStudent.religion = student.data()['religion'] ?? "";
    cStudent.caste = student.data()['caste'] ?? "";
    cStudent.subCaste = student.data()['subCaste'] ?? "";
    cStudent.nonCremy = student.data()['nonCremy'] ?? "";
    cStudent.previousSchoolBoard = student.data()['previousSchoolBoard'] ?? "";
    cStudent.previousExamName = student.data()['previousExamName'] ?? "";
    cStudent.previousExamPercentage =
        student.data()['previousExamPercentage'] ?? "";
    cStudent.seatNo = student.data()['seatNo'] ?? "";
    cStudent.passYear = student.data()['passYear'] ?? "";
    cStudent.state = student.data()['state'] ?? "";
    cStudent.address = student.data()['address'] ?? "";
    cStudent.isPhysicallyChallenged =
        student.data()['isPhysicallyChallenged'] ?? "";
    cStudent.isMinority = student.data()['isMinority'] ?? "";
    cStudent.grNo = student.data()['grNo'] ?? "";
    cStudent.gapDetail = student.data()['gapDetail'] ?? "";
    cStudent.studentMobileNo = student.data()['studentMobileNo'] ?? "";
    cStudent.email = student.data()['email'] ?? "";
    cStudent.feesAmount = student.data()['feesAmount'] ?? "";
    cStudent.fatherName = student.data()['fatherName'] ?? "";
    cStudent.fatherOccupation = student.data()['fatherOccupation'] ?? "";
    cStudent.fatherEducation = student.data()['fatherEducation'] ?? "";
    cStudent.fatherAnnualIncome = student.data()['fatherAnnualIncome'] ?? "";
    cStudent.fatherEmail = student.data()['fatherEmail'] ?? "";
    cStudent.fatherContactNo = student.data()['fatherContactNo'] ?? "";
    cStudent.fatherOfficeAddress = student.data()['fatherOfficeAddress'] ?? "";
    cStudent.fatherOfficeContactNo =
        student.data()['fatherOfficeContactNo'] ?? "";
    cStudent.motherName = student.data()['motherName'] ?? "";
    cStudent.motherOccupation = student.data()['motherOccupation'] ?? "";
    cStudent.motherEducation = student.data()['motherEducation'] ?? "";
    cStudent.motherAnnualIncome = student.data()['motherAnnualIncome'] ?? "";
    cStudent.motherEmail = student.data()['motherEmail'] ?? "";
    cStudent.motherContact = student.data()['motherContact'] ?? "";
    cStudent.motherOfficeAddress = student.data()['motherOfficeAddress'] ?? "";
    cStudent.motherOfficeContact = student.data()['motherOfficeContact'] ?? "";
    cStudent.ressidencialAddress = student.data()['ressidencialAddress'] ?? "";
    cStudent.permanentAddress = student.data()['permanentAddress'] ?? "";
    cStudent.transport = student.data()['transport'] ?? "";
    cStudent.birthCertificate = student.data()['birthCertificate'] ?? "";
    cStudent.transferCertificate = student.data()['transferCertificate'] ?? "";
    cStudent.markSheet = student.data()['markSheet'] ?? "";
    cStudent.uid = student.data()['uid'] ?? "";
  }
  getStudent() {
    return cStudent;
  }
}

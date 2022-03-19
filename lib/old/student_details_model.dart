class Student {
  String? role;
  String? firstName;
  String? middleName;
  String? lastName;
  String? studentUniversity;
  String? studentCourse;
  String? studentBranch;
  String? courseYear;
  String? academicYear;
  String? dob;
  String? birthPlace;
  String? bloodGroup;
  String? gender;
  String? nationality;
  String? religion;
  String? caste;
  String? subCaste;
  String? nonCremy;
  String? previousSchoolBoard;
  String? previousExamName;
  String? previousExamPercentage;
  String? seatNo;
  String? passYear;
  String? state;
  String? address;
  String? isPhysicallyChallenged;
  String? isMinority;
  String? grNo;
  String? gapDetail;
  String? studentMobileNo;
  String? email;
  String? feesAmount;
  String? fatherName;
  String? fatherOccupation;
  String? fatherEducation;
  String? fatherAnnualIncome;
  String? fatherEmail;
  String? fatherContactNo;
  String? fatherOfficeAddress;
  String? fatherOfficeContactNo;
  String? motherName;
  String? motherOccupation;
  String? motherEducation;
  String? motherAnnualIncome;
  String? motherEmail;
  String? motherContact;
  String? motherOfficeAddress;
  String? motherOfficeContact;
  String? ressidencialAddress;
  String? permanentAddress;
  String? transport;
  String? birthCertificate;
  String? transferCertificate;
  String? markSheet;
  String? uid;
  String? password;

  Student({
    this.role,
    this.firstName,
    this.middleName,
    this.lastName,
    this.studentUniversity,
    this.studentBranch,
    this.studentCourse,
    this.courseYear,
    this.academicYear,
    this.dob,
    this.birthPlace,
    this.bloodGroup,
    this.gender,
    this.nationality,
    this.religion,
    this.caste,
    this.subCaste,
    this.nonCremy,
    this.previousSchoolBoard,
    this.previousExamName,
    this.previousExamPercentage,
    this.seatNo,
    this.passYear,
    this.state,
    this.address,
    this.isPhysicallyChallenged,
    this.isMinority,
    this.grNo,
    this.gapDetail,
    this.studentMobileNo,
    this.email,
    this.feesAmount,
    this.fatherName,
    this.fatherOccupation,
    this.fatherEducation,
    this.fatherAnnualIncome,
    this.fatherEmail,
    this.fatherContactNo,
    this.fatherOfficeAddress,
    this.fatherOfficeContactNo,
    this.motherName,
    this.motherOccupation,
    this.motherEducation,
    this.motherAnnualIncome,
    this.motherEmail,
    this.motherContact,
    this.motherOfficeAddress,
    this.motherOfficeContact,
    this.ressidencialAddress,
    this.permanentAddress,
    this.transport,
    this.birthCertificate,
    this.transferCertificate,
    this.markSheet,
    this.uid,
  });

  Student.fromJson(Map<String, dynamic> json) {
    role = json['type'] ?? "";
    firstName = json['firstName'] ?? "";
    middleName = json['middleName'] ?? "";
    lastName = json['lastName'] ?? "";
    studentUniversity = json['studentUniversity'] ?? "";
    studentBranch = json['studentBranch'] ?? "";
    studentCourse = json['studentCourse'] ?? "";
    courseYear = json['courseYear'] ?? "";
    academicYear = json['academicYear'] ?? "";
    dob = json['dob'] ?? "";
    birthPlace = json['birthPlace'] ?? "";
    bloodGroup = json['bloodGroup'] ?? "";
    gender = json['gender'] ?? "";
    nationality = json['nationality'] ?? "";
    religion = json['religion'] ?? "";
    caste = json['caste'] ?? "";
    subCaste = json['subCaste'] ?? "";
    nonCremy = json['nonCremy'] ?? "";
    previousSchoolBoard = json['previousSchoolBoard'] ?? "";
    previousExamName = json['previousExamName'] ?? "";
    previousExamPercentage = json['previousExamPercentage'] ?? "";
    seatNo = json['seatNo'] ?? "";
    passYear = json['passYear'] ?? "";
    state = json['state'] ?? "";
    address = json['address'] ?? "";
    isPhysicallyChallenged = json['isPhysicallyChallenged'] ?? "";
    isMinority = json['isMinority'] ?? "";
    grNo = json['grNo'] ?? "";
    gapDetail = json['gapDetail'] ?? "";
    studentMobileNo = json['studentMobileNo'] ?? "";
    email = json['email'] ?? "";
    feesAmount = json['feesAmount'] ?? "";
    fatherName = json['fatherName'] ?? "";
    fatherOccupation = json['fatherOccupation'] ?? "";
    fatherEducation = json['fatherEducation'] ?? "";
    fatherAnnualIncome = json['fatherAnnualIncome'] ?? "";
    fatherEmail = json['fatherEmail'] ?? "";
    fatherContactNo = json['fatherContactNo'] ?? "";
    fatherOfficeAddress = json['fatherOfficeAddress'] ?? "";
    fatherOfficeContactNo = json['fatherOfficeContactNo'] ?? "";
    motherName = json['motherName'] ?? "";
    motherOccupation = json['motherOccupation'] ?? "";
    motherEducation = json['motherEducation'] ?? "";
    motherAnnualIncome = json['motherAnnualIncome'] ?? "";
    motherEmail = json['motherEmail'] ?? "";
    motherContact = json['motherContact'] ?? "";
    motherOfficeAddress = json['motherOfficeAddress'] ?? "";
    motherOfficeContact = json['motherOfficeContact'] ?? "";
    ressidencialAddress = json['ressidencialAddress'] ?? "";
    permanentAddress = json['permanentAddress'] ?? "";
    transport = json['transport'] ?? "";
    birthCertificate = json['birthCertificate'] ?? "";
    transferCertificate = json['transferCertificate'] ?? "";
    markSheet = json['markSheet'] ?? "";
    uid = json['uid'] ?? "";
    password = json['password'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.role;
    data['firstName'] = this.firstName;
    data['middleName'] = this.middleName;
    data['lastName'] = this.lastName;
    data['studentUniversity'] = this.studentUniversity;
    data['studentCourse'] = this.studentCourse;
    data['studentBranch'] = this.studentBranch;
    data['courseYear'] = this.courseYear;
    data['academicYear'] = this.academicYear;
    data['dob'] = this.dob;
    data['birthPlace'] = this.birthPlace;
    data['bloodGroup'] = this.bloodGroup;
    data['gender'] = this.gender;
    data['nationality'] = this.nationality;
    data['religion'] = this.religion;
    data['caste'] = this.caste;
    data['subCaste'] = this.subCaste;
    data['nonCremy'] = this.nonCremy;
    data['previousSchoolBoard'] = this.previousSchoolBoard;
    data['previousExamName'] = this.previousExamName;
    data['previousExamPercentage'] = this.previousExamPercentage;
    data['seatNo'] = this.seatNo;
    data['passYear'] = this.passYear;
    data['state'] = this.state;
    data['address'] = this.address;
    data['isPhysicallyChallenged'] = this.isPhysicallyChallenged;
    data['isMinority'] = this.isMinority;
    data['grNo'] = this.grNo;
    data['gapDetail'] = this.gapDetail;
    data['studentMobileNo'] = this.studentMobileNo;
    data['email'] = this.email;
    data['feesAmount'] = this.feesAmount;
    data['fatherName'] = this.fatherName;
    data['fatherOccupation'] = this.fatherOccupation;
    data['fatherEducation'] = this.fatherEducation;
    data['fatherAnnualIncome'] = this.fatherAnnualIncome;
    data['fatherEmail'] = this.fatherEmail;
    data['fatherContactNo'] = this.fatherContactNo;
    data['fatherOfficeAddress'] = this.fatherOfficeAddress;
    data['fatherOfficeContactNo'] = this.fatherOfficeContactNo;
    data['motherName'] = this.motherName;
    data['motherOccupation'] = this.motherOccupation;
    data['motherEducation'] = this.motherEducation;
    data['motherAnnualIncome'] = this.motherAnnualIncome;
    data['motherEmail'] = this.motherEmail;
    data['motherContact'] = this.motherContact;
    data['motherOfficeAddress'] = this.motherOfficeAddress;
    data['motherOfficeContact'] = this.motherOfficeContact;
    data['ressidencialAddress'] = this.ressidencialAddress;
    data['permanentAddress'] = this.permanentAddress;
    data['transport'] = this.transport;
    data['birthCertificate'] = this.birthCertificate;
    data['transferCertificate'] = this.transferCertificate;
    data['markSheet'] = this.markSheet;
    data['uid'] = this.uid;
    data['password'] = this.password;
    return data;
  }
}

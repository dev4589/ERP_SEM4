import '../models/enquiry_model.dart';
import 'package:random_string/random_string.dart';

class AddEnquiryMap {
  Map<String, String> enquiryDetails = {};
  mapDetails(EnquiryModel e1) {
    enquiryDetails = {
      'form_no': e1.formno ?? "",
      'endate': e1.endate ?? "",
      'name': e1.name ?? "",
      'dob': e1.dob ?? "",
      'schlpresent': e1.schoolpresent ?? "",
      'class': e1.class2 ?? "",
      'div': e1.div ?? "",
      'std': e1.std ?? "",
      'fname': e1.fname ?? "",
      'mname': e1.mname ?? "",
      'annualincm': e1.annualincm ?? "",
      'natureofprofession': e1.natureofprofession ?? "",
      'email': e1.email ?? "",
      'cno1': e1.cno1 ?? "",
      'con2': e1.cno2 ?? "",
      'postaladdress': e1.postaladdress ?? "",
      'fcon1': e1.fcon1 ?? "",
      'gender': e1.gender ?? "",
      'fqualification': e1.fqualification ?? "",
      'mqualification': e1.mqualification ?? "",
      'occupation': e1.occupation ?? "",
    };
  }
}

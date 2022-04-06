import '../models/staff_details_model.dart';
import '../models/student_details_model.dart';
import 'package:flutter/material.dart';

class UserData extends ChangeNotifier {
  Student student = Student();
  List pages = [];
  Staff staff = Staff();

  void setStudentData(Student student1) {
    student = student1;
    notifyListeners();
  }

  void setPagesData(List page) {
    pages = page;
    notifyListeners();
  }

  Student getStudentData() {
    return student;
  }
  List getPageData() {
    return pages;
  }

  void logoutStudentData() {
    student = Student();
    notifyListeners();
  }
}


  // List selectedServices = [];
  // int selectedServicesCost = 0;
  // List staff = [];
  // List reservationDate = [];
  // int selectedDate;
  // String slot;
  // bool slotsCreated = false;
  // int selectedRadio;
  // bool isPromoCodeApplied = false;
  // String discount;
  // bool promoCodeIsLoading = false;

  // // Map selectedDate = {
  // //   // 'day': '',
  // //   // 'date': '',
  // //   // 'month': '',
  // // };

  // void addServiceName(String newServiceName) {
  //   selectedServices.add(newServiceName);
  //   notifyListeners();
  // }

  // void changePromoCodeIsLoading(bool value) {
  //   promoCodeIsLoading = value;
  //   notifyListeners();
  // }

  // void changePromoCodeDiscount(String value) {
  //   discount = value;
  //   notifyListeners();
  // }

  // void addStaff(String newStaffName) {
  //   staff.add(newStaffName);
  //   notifyListeners();
  // }

  // void addSlot(String newSlot) {
  //   slot = newSlot;
  //   notifyListeners();
  // }

  // void changeIsPromoCodeApplied(bool value) {
  //   isPromoCodeApplied = value;
  //   notifyListeners();
  // }

  // void addSlotGroupValue(int newGroupValue) {
  //   selectedRadio = newGroupValue;
  //   notifyListeners();
  // }

  // void checkSlotsCreated() {
  //   slotsCreated = true;
  //   notifyListeners();
  // }

  // void addReservationDate(String newDay, String newDate, String newMonth) {
  //   reservationDate = [newDay, newDate, newMonth];
  //   selectedDate = int.parse(newDate);
  //   notifyListeners();
  // }

  // // void addDate(String day, String date, String month) {
  // //   selectedDate = {
  // //     'day': day,
  // //     'date': date,
  // //     'month': month,
  // //   };
  // //   notifyListeners();
  // // }

  // void removeServiceName(String newServiceName) {
  //   selectedServices.remove(newServiceName);
  //   notifyListeners();
  // }

  // void addServiceCost(int serviceCost) {
  //   selectedServicesCost = selectedServicesCost + serviceCost;
  //   notifyListeners();
  // }

  // void removeServiceCost(int serviceCost) {
  //   selectedServicesCost = selectedServicesCost - serviceCost;
  //   notifyListeners();
  // }

  // void reset() {
  //   selectedServicesCost = 0;
  //   selectedServices = [];
  //   slotsCreated = false;
  //   reservationDate = null;
  //   // selectedDate = {};
  //   notifyListeners();
  // }

  // void resetTime() {
  //   selectedDate = null;
  //   reservationDate = null;
  //   selectedRadio = 0;
  //   slot = null;
  //   notifyListeners();
  // }

  // void resetStaff() {
  //   staff = [];
  //   notifyListeners();
  // }


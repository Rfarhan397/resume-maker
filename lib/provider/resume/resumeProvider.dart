import 'package:flutter/material.dart';

class ResumeProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> infoItems = [
    {
      "title": "Personal Information",
      "subTitle": "Enter name, address, number and more...",
      "isRequired": true,
      "isChecked": true,
    },
    {
      "title": "Job Title",
      "subTitle": "Add your job title and description",
      "isRequired": false,
      "isChecked": false,
    },
    {
      "title": "Career Objective",
      "subTitle": "Add career objective details",
      "isRequired": true,
      "isChecked": true,
    },
    {
      "title": "Education",
      "subTitle": "Add education details and history",
      "isRequired": true,
      "isChecked": true,
    },
    {
      "title": "Skills",
      "subTitle": "Add your skills set past to present",
      "isRequired": true,
      "isChecked": true,
    },
    {
      "title": "Work Experience",
      "subTitle": "Add Work Experience",
      "isRequired": true,
      "isChecked": true,
    },
    {
      "title": "Certification & training",
      "subTitle": "Add your certificates and training history",
      "isRequired": false,
      "isChecked": false,
    },
    {
      "title": "Hobbies & Interests",
      "subTitle": "Add your favorite hobbies",
      "isRequired": false,
      "isChecked": false,
    },
    {
      "title": "Honors & Awards",
      "subTitle": "Add honors and awards details",
      "isRequired": false,
      "isChecked": false,
    },
  ];

  void toggleCheckbox(int index) {
    infoItems[index]["isChecked"] = !infoItems[index]["isChecked"];
    notifyListeners();
  }

  int get completedSectionsCount {
    return infoItems.where((item) => item["isChecked"] == true).length;
  }


  
  //education details


  String degree = '';
  String institute = '';
  String startDate = '';
  String endDate = '';
  bool isContinued = false;
  String description = '';

  void updateField(String key, String value) {
    switch (key) {
      case 'degree':
        degree = value;
        break;
      case 'institute':
        institute = value;
        break;
      case 'startDate':
        startDate = value;
        break;
      case 'endDate':
        endDate = value;
        break;
      case 'description':
        description = value;
        break;
      case 'isContinued':
        isContinued = value.toLowerCase() == 'true';
        break;
    }
    notifyListeners();
  }

}

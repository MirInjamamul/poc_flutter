class User {
  final String pocLead;
  final String pointOfContact;
  final String employeeId;
  final String fullName;
  final String company;
  final String unit;
  final String department;
  final String section;
  final String jobCategory;
  final String designation;
  final String employeeType;
  final String workLocation;
  final String reportingEmployeeId;
  final String reportingEmployeeName;
  final String reportingDesignation;
  final String gender;
  final String religion;
  String nationalId;
  String name;
  String dateOfBirth;
  String fatherName;
   String motherName;
   String blood;
   String personalPhone;
   String presentAddress;
   String permanentAddress;
   String maritalStatus;
   String emergencyContactName;
   String emergencyContactRelation;
   String emergencyContactAddress;
   String emergencyContactPhone;
   String personalEmail;
   String tinNo;
   String tinCircle;
   String tinZone;
   String employeeOfficeMobile;
   String employeeOfficeEmail;
   String educationSecondaryInstitute;
   String educationSecondaryMajor;
   String educationSecondaryInstitution;
   String educationSecondaryResult;
   String educationSecondaryPassingYear;
   String educationHigherSecondaryInstitute;
   String educationHigherSecondaryMajor;
   String educationHigherSecondaryInstitution;
   String educationHigherSecondaryResult;
   String educationHigherSecondaryPassingYear;
   String educationGraduationInstitute;
   String educationGraduationMajor;
   String educationGraduationInstitution;
   String educationGraduationResult;
   String educationGraduationPassingYear;
   String educationPostGraduationInstitute;
   String educationPostGraduationMajor;
   String educationPostGraduationInstitution;
   String educationPostGraduationResult;
   String educationPostGraduationPassingYear;
   String workExperienceFirstName;
   String workExperienceFirstDesignation;
   String workExperienceFirstDateTo;
   String workExperienceFirstDateFrom;
   String workExperienceSecondName;
   String workExperienceSecondDesignation;
   String workExperienceSecondDateTo;
   String workExperienceSecondDateFrom;
   String workExperienceThirdName;
   String workExperienceThirdDesignation;
   String workExperienceThirdDateTo;
   String workExperienceThirdDateFrom;
   String workExperienceFourthName;
   String workExperienceFourthDesignation;
   String workExperienceFourthDateTo;
   String workExperienceFourthDateFrom;
   String workExperienceFifthName;
   String workExperienceFifthDesignation;
   String workExperienceFifthDateTo;
   String workExperienceFifthDateFrom;
   String workExperienceSixthName;
   String workExperienceSixthDesignation;
   String workExperienceSixthDateTo;
   String workExperienceSixthDateFrom;

  User({
    required this.pocLead,
    required this.pointOfContact,
    required this.employeeId,
    required this.fullName,
    required this.company,
    required this.unit,
    required this.department,
    required this.section,
    required this.jobCategory,
    required this.designation,
    required this.employeeType,
    required this.workLocation,
    required this.reportingEmployeeId,
    required this.reportingEmployeeName,
    required this.reportingDesignation,
    required this.gender,
    required this.religion,
    required this.nationalId,
    required this.name,
    required this.dateOfBirth,
    required this.fatherName,
    required this.motherName,
    required this.blood,
    required this.personalPhone,
    required this.presentAddress,
    required this.permanentAddress,
    required this.maritalStatus,
    required this.emergencyContactName,
    required this.emergencyContactRelation,
    required this.emergencyContactAddress,
    required this.emergencyContactPhone,
    required this.personalEmail,
    required this.tinNo,
    required this.tinCircle,
    required this.tinZone,
    required this.employeeOfficeMobile,
    required this.employeeOfficeEmail,
    required this.educationSecondaryInstitute,
    required this.educationSecondaryMajor,
    required this.educationSecondaryInstitution,
    required this.educationSecondaryResult,
    required this.educationSecondaryPassingYear,
    required this.educationHigherSecondaryInstitute,
    required this.educationHigherSecondaryMajor,
    required this.educationHigherSecondaryInstitution,
    required this.educationHigherSecondaryResult,
    required this.educationHigherSecondaryPassingYear,
    required this.educationGraduationInstitute,
    required this.educationGraduationMajor,
    required this.educationGraduationInstitution,
    required this.educationGraduationResult,
    required this.educationGraduationPassingYear,
    required this.educationPostGraduationInstitute,
    required this.educationPostGraduationMajor,
    required this.educationPostGraduationInstitution,
    required this.educationPostGraduationResult,
    required this.educationPostGraduationPassingYear,
    required this.workExperienceFirstName,
    required this.workExperienceFirstDesignation,
    required this.workExperienceFirstDateTo,
    required this.workExperienceFirstDateFrom,
    required this.workExperienceSecondName,
    required this.workExperienceSecondDesignation,
    required this.workExperienceSecondDateTo,
    required this.workExperienceSecondDateFrom,
    required this.workExperienceThirdName,
    required this.workExperienceThirdDesignation,
    required this.workExperienceThirdDateTo,
    required this.workExperienceThirdDateFrom,
    required this.workExperienceFourthName,
    required this.workExperienceFourthDesignation,
    required this.workExperienceFourthDateTo,
    required this.workExperienceFourthDateFrom,
    required this.workExperienceFifthName,
    required this.workExperienceFifthDesignation,
    required this.workExperienceFifthDateTo,
    required this.workExperienceFifthDateFrom,
    required this.workExperienceSixthName,
    required this.workExperienceSixthDesignation,
    required this.workExperienceSixthDateTo,
    required this.workExperienceSixthDateFrom,
  });


  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      pocLead: json['Poc_Lead'] ?? "",
      pointOfContact: json['Point_of_contact'] ?? "",
      employeeId: json['Employee_Id'] ?? "",
      fullName: json['Full_Name'] ?? "",
      company: json['Company'] ?? "",
      unit: json['Unit'] ?? "",
      department: json['Department'] ?? "",
      section: json['Section'] ?? "",
      jobCategory: json['Job_Category'] ?? "",
      designation: json['Designation'] ?? "",
      employeeType: json['Employee_Type'] ?? "",
      workLocation: json['Work_Location'] ?? "",
      reportingEmployeeId: json['Reporting_Employee_ID'] ?? "",
      reportingEmployeeName: json['Reporting_Employee_Name'] ?? "",
      reportingDesignation: json['Reporting_Designation'] ?? "",
      gender: json['Gender'] ?? "",
      religion: json['Religion'] ?? "",
      nationalId: json['National_id'] ?? "",
      name: json['Name'] ?? "",
      dateOfBirth: json['Date_of_Birth'] ?? "",
      fatherName: json['Father_name'] ?? "",
      motherName: json['Mother_Name'] ?? "",
      blood: json['Blood'] ?? "",
      personalPhone: json['Personal_Phone'] ?? "",
      presentAddress: json['Present_Address'] ?? "",
      permanentAddress: json['Permanent_Address'] ?? "",
      maritalStatus: json['Marital_Status'] ?? "",
      emergencyContactName: json['Emergency_Contact_name'] ?? "",
      emergencyContactRelation: json['Emergency_Contact_Relation'] ?? "",
      emergencyContactAddress: json['Emergency_Contact_Address'] ?? "",
      emergencyContactPhone: json['Emergency_Contact_Phone'] ?? "",
      personalEmail: json['Personal_Email'] ?? "",
      tinNo: json['Tin_No'] ?? "",
      tinCircle: json['Tin_Circle'] ?? "",
      tinZone: json['Tin_Zone'] ?? "",
      employeeOfficeMobile: json['Employee_Office_Mobile'] ?? "",
      employeeOfficeEmail: json['Employee_Office_Email'] ?? "",
      educationSecondaryInstitute: json['Education_Secondary_Institute'] ?? "",
      educationSecondaryMajor: json['Education_Secondary_Major'] ?? "",
      educationSecondaryInstitution: json['Education_Secondary_Institution'] ?? "",
      educationSecondaryResult: json['Education_Secondary_Result'] ?? "",
      educationSecondaryPassingYear: json['Education_Secondary_Passing_Year'] ?? "",
      educationHigherSecondaryInstitute: json['Education_Higher_Secondary_Institute'] ?? "",
      educationHigherSecondaryMajor: json['Education_Higher_Secondary_Major'] ?? "",
      educationHigherSecondaryInstitution: json['Education_Higher_Secondary_Institution'] ?? "",
      educationHigherSecondaryResult: json['Education_Higher_Secondary_Result'] ?? "",
      educationHigherSecondaryPassingYear: json['Education_Higher_Secondary_Passing_Year'] ?? "",
      educationGraduationInstitute: json['Education_Graduation_Institute'] ?? "",
      educationGraduationMajor: json['Education_Graduation_Major'] ?? "",
      educationGraduationInstitution: json['Education_Graduation_Institution'] ?? "",
      educationGraduationResult: json['Education_Graduation_Result'] ?? "",
      educationGraduationPassingYear: json['Education_Graduation_Passing_Year'] ?? "",
      educationPostGraduationInstitute: json['Education_POST_Graduation_Institute'] ?? "",
      educationPostGraduationMajor: json['Education_POST_Graduation_Major'] ?? "",
      educationPostGraduationInstitution: json['Education_POST_Graduation_Institution'] ?? "",
      educationPostGraduationResult: json['Education_POST_Graduation_Result'] ?? "",
      educationPostGraduationPassingYear: json['Education_POST_Graduation_Passing_Year'] ?? "",
      workExperienceFirstName: json['Work_Experience_First_Name'] ?? "",
      workExperienceFirstDesignation: json['Work_Experience_First_Designation'] ?? "",
      workExperienceFirstDateTo: json['Work_Experience_First_Date_To'] ?? "",
      workExperienceFirstDateFrom: json['Work_Experience_First_Date_From'] ?? "",
      workExperienceSecondName: json['Work_Experience_Second_Name'] ?? "",
      workExperienceSecondDesignation: json['Work_Experience_Second_Designation'] ?? "",
      workExperienceSecondDateTo: json['Work_Experience_Second_Date_To'] ?? "",
      workExperienceSecondDateFrom: json['Work_Experience_Second_Date_From'] ?? "",
      workExperienceThirdName: json['Work_Experience_Third_Name'] ?? "",
      workExperienceThirdDesignation: json['Work_Experience_Third_Designation'] ?? "",
      workExperienceThirdDateTo: json['Work_Experience_Third_Date_To'] ?? "",
      workExperienceThirdDateFrom: json['Work_Experience_Third_Date_From'] ?? "",
      workExperienceFourthName: json['Work_Experience_Fourth_Name'] ?? "",
      workExperienceFourthDesignation: json['Work_Experience_Fourth_Designation'] ?? "",
      workExperienceFourthDateTo: json['Work_Experience_Fourth_Date_To'] ?? "",
      workExperienceFourthDateFrom: json['Work_Experience_Fourth_Date_From'] ?? "",
      workExperienceFifthName: json['Work_Experience_Fifth_Name'] ?? "",
      workExperienceFifthDesignation: json['Work_Experience_Fifth_Designation'] ?? "",
      workExperienceFifthDateTo: json['Work_Experience_Fifth_Date_To'] ?? "",
      workExperienceFifthDateFrom: json['Work_Experience_Fifth_Date_From'] ?? "",
      workExperienceSixthName: json['Work_Experience_Sixth_Name'] ?? "",
      workExperienceSixthDesignation: json['Work_Experience_Sixth_Designation'] ?? "",
      workExperienceSixthDateTo: json['Work_Experience_Sixth_Date_To'] ?? "",
      workExperienceSixthDateFrom: json['Work_Experience_Sixth_Date_From'] ?? "",
    );
  }

}
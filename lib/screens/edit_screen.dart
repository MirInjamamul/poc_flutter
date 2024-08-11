
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:poc/screens/user_list_screen.dart';
import 'package:http/http.dart' as http;

import '../models/user.dart';

class EditScreen extends StatefulWidget {
  late User user; // Assuming you have a User model

  EditScreen({super.key, required this.user});

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final PageController _pageController = PageController();
  int _currentStep = 0;


  // Controllers for the form fields
  final TextEditingController _nationalIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _fatherNameController = TextEditingController();
  final TextEditingController _motherNameController = TextEditingController();
  final TextEditingController _bloodController = TextEditingController();
  final TextEditingController _personalPhoneController = TextEditingController();
  final TextEditingController _presentAddressController = TextEditingController();
  final TextEditingController _permanentAddressController = TextEditingController();
  final TextEditingController _maritalStatusController = TextEditingController();
  final TextEditingController _emergencyContactNameController = TextEditingController();
  final TextEditingController _emergencyContactRelationController = TextEditingController();
  final TextEditingController _emergencyContactAddressController = TextEditingController();
  final TextEditingController _emergencyContactPhoneController = TextEditingController();
  final TextEditingController _personalEmailController = TextEditingController();

  // Step 2
  final TextEditingController _tinNoController = TextEditingController();
  final TextEditingController _tinCircleController = TextEditingController();
  final TextEditingController _tinZoneController = TextEditingController();
  final TextEditingController _employeeOfficeMobileController = TextEditingController();
  final TextEditingController _employeeOfficeEmailController = TextEditingController();

  // step 3
  final TextEditingController _educationSecondaryInstituteController = TextEditingController();
  final TextEditingController _educationSecondaryMajorController = TextEditingController();
  final TextEditingController _educationSecondaryInstitutionController = TextEditingController();
  final TextEditingController _educationSecondaryResultController = TextEditingController();
  final TextEditingController _educationSecondaryPassingYearController = TextEditingController();
  final TextEditingController _educationHigherSecondaryInstituteController = TextEditingController();
  final TextEditingController _educationHigherSecondaryMajorController = TextEditingController();
  final TextEditingController _educationHigherSecondaryInstitutionController = TextEditingController();
  final TextEditingController _educationHigherSecondaryResultController = TextEditingController();
  final TextEditingController _educationHigherSecondaryPassingYearController = TextEditingController();
  final TextEditingController _educationGraduationInstituteController = TextEditingController();
  final TextEditingController _educationGraduationMajorController = TextEditingController();
  final TextEditingController _educationGraduationInstitutionController = TextEditingController();
  final TextEditingController _educationGraduationResultController = TextEditingController();
  final TextEditingController _educationGraduationPassingYearController = TextEditingController();
  final TextEditingController _educationPostGraduationInstituteController = TextEditingController();
  final TextEditingController _educationPostGraduationMajorController = TextEditingController();
  final TextEditingController _educationPostGraduationInstitutionController = TextEditingController();
  final TextEditingController _educationPostGraduationResultController = TextEditingController();
  final TextEditingController _educationPostGraduationPassingYearController = TextEditingController();

  // Controllers for Step 4 fields
  final TextEditingController _workExperienceFirstNameController = TextEditingController();
  final TextEditingController _workExperienceFirstDesignationController = TextEditingController();
  final TextEditingController _workExperienceFirstDateToController = TextEditingController();
  final TextEditingController _workExperienceFirstDateFromController = TextEditingController();
  final TextEditingController _workExperienceSecondNameController = TextEditingController();
  final TextEditingController _workExperienceSecondDesignationController = TextEditingController();
  final TextEditingController _workExperienceSecondDateToController = TextEditingController();
  final TextEditingController _workExperienceSecondDateFromController = TextEditingController();
  final TextEditingController _workExperienceThirdNameController = TextEditingController();
  final TextEditingController _workExperienceThirdDesignationController = TextEditingController();
  final TextEditingController _workExperienceThirdDateToController = TextEditingController();
  final TextEditingController _workExperienceThirdDateFromController = TextEditingController();
  final TextEditingController _workExperienceFourthNameController = TextEditingController();
  final TextEditingController _workExperienceFourthDesignationController = TextEditingController();
  final TextEditingController _workExperienceFourthDateToController = TextEditingController();
  final TextEditingController _workExperienceFourthDateFromController = TextEditingController();
  final TextEditingController _workExperienceFifthNameController = TextEditingController();
  final TextEditingController _workExperienceFifthDesignationController = TextEditingController();
  final TextEditingController _workExperienceFifthDateToController = TextEditingController();
  final TextEditingController _workExperienceFifthDateFromController = TextEditingController();
  final TextEditingController _workExperienceSixthNameController = TextEditingController();
  final TextEditingController _workExperienceSixthDesignationController = TextEditingController();
  final TextEditingController _workExperienceSixthDateToController = TextEditingController();
  final TextEditingController _workExperienceSixthDateFromController = TextEditingController();



  @override
  void initState() {
    super.initState();
    // Initialize controllers with current user data
    _nationalIdController.text = widget.user.nationalId;
    _nameController.text = widget.user.name;
    _dateOfBirthController.text = widget.user.dateOfBirth;
    _fatherNameController.text = widget.user.fatherName;
    _motherNameController.text = widget.user.motherName;
    _bloodController.text = widget.user.blood;
    _personalPhoneController.text = widget.user.personalPhone;
    _presentAddressController.text = widget.user.presentAddress;
    _permanentAddressController.text = widget.user.permanentAddress;
    _maritalStatusController.text = widget.user.maritalStatus;
    _emergencyContactNameController.text = widget.user.emergencyContactName;
    _emergencyContactRelationController.text = widget.user.emergencyContactRelation;
    _emergencyContactAddressController.text = widget.user.emergencyContactAddress;
    _emergencyContactPhoneController.text = widget.user.emergencyContactPhone;
    _personalEmailController.text = widget.user.personalEmail;

    _tinNoController.text = widget.user.tinNo;
    _tinCircleController.text = widget.user.tinCircle;
    _tinZoneController.text = widget.user.tinZone;
    _employeeOfficeMobileController.text = widget.user.employeeOfficeMobile;
    _employeeOfficeEmailController.text = widget.user.employeeOfficeEmail;

    _educationSecondaryInstituteController.text = widget.user.educationSecondaryInstitute;
    _educationSecondaryMajorController.text = widget.user.educationSecondaryMajor;
    _educationSecondaryInstitutionController.text = widget.user.educationSecondaryInstitution;
    _educationSecondaryResultController.text = widget.user.educationSecondaryResult;
    _educationSecondaryPassingYearController.text = widget.user.educationSecondaryPassingYear;
    _educationHigherSecondaryInstituteController.text = widget.user.educationHigherSecondaryInstitute;
    _educationHigherSecondaryMajorController.text = widget.user.educationHigherSecondaryMajor;
    _educationHigherSecondaryInstitutionController.text = widget.user.educationHigherSecondaryInstitution;
    _educationHigherSecondaryResultController.text = widget.user.educationHigherSecondaryResult;
    _educationHigherSecondaryPassingYearController.text = widget.user.educationHigherSecondaryPassingYear;
    _educationGraduationInstituteController.text = widget.user.educationGraduationInstitute;
    _educationGraduationMajorController.text = widget.user.educationGraduationMajor;
    _educationGraduationInstitutionController.text = widget.user.educationGraduationInstitution;
    _educationGraduationResultController.text = widget.user.educationGraduationResult;
    _educationGraduationPassingYearController.text = widget.user.educationGraduationPassingYear;
    _educationPostGraduationInstituteController.text = widget.user.educationPostGraduationInstitute;
    _educationPostGraduationMajorController.text = widget.user.educationPostGraduationMajor;
    _educationPostGraduationInstitutionController.text = widget.user.educationPostGraduationInstitution;
    _educationPostGraduationResultController.text = widget.user.educationPostGraduationResult;
    _educationPostGraduationPassingYearController.text = widget.user.educationPostGraduationPassingYear;

    // Initialize controllers with current user data for Step 4
    _workExperienceFirstNameController.text = widget.user.workExperienceFirstName;
    _workExperienceFirstDesignationController.text = widget.user.workExperienceFirstDesignation;
    _workExperienceFirstDateToController.text = widget.user.workExperienceFirstDateTo;
    _workExperienceFirstDateFromController.text = widget.user.workExperienceFirstDateFrom;
    _workExperienceSecondNameController.text = widget.user.workExperienceSecondName;
    _workExperienceSecondDesignationController.text = widget.user.workExperienceSecondDesignation;
    _workExperienceSecondDateToController.text = widget.user.workExperienceSecondDateTo;
    _workExperienceSecondDateFromController.text = widget.user.workExperienceSecondDateFrom;
    _workExperienceThirdNameController.text = widget.user.workExperienceThirdName;
    _workExperienceThirdDesignationController.text = widget.user.workExperienceThirdDesignation;
    _workExperienceThirdDateToController.text = widget.user.workExperienceThirdDateTo;
    _workExperienceThirdDateFromController.text = widget.user.workExperienceThirdDateFrom;
    _workExperienceFourthNameController.text = widget.user.workExperienceFourthName;
    _workExperienceFourthDesignationController.text = widget.user.workExperienceFourthDesignation;
    _workExperienceFourthDateToController.text = widget.user.workExperienceFourthDateTo;
    _workExperienceFourthDateFromController.text = widget.user.workExperienceFourthDateFrom;
    _workExperienceFifthNameController.text = widget.user.workExperienceFifthName;
    _workExperienceFifthDesignationController.text = widget.user.workExperienceFifthDesignation;
    _workExperienceFifthDateToController.text = widget.user.workExperienceFifthDateTo;
    _workExperienceFifthDateFromController.text = widget.user.workExperienceFifthDateFrom;
    _workExperienceSixthNameController.text = widget.user.workExperienceSixthName;
    _workExperienceSixthDesignationController.text = widget.user.workExperienceSixthDesignation;
    _workExperienceSixthDateToController.text = widget.user.workExperienceSixthDateTo;
    _workExperienceSixthDateFromController.text = widget.user.workExperienceSixthDateFrom;
  }

  @override
  void dispose() {
    _nationalIdController.dispose();
    _nameController.dispose();
    _dateOfBirthController.dispose();
    _fatherNameController.dispose();
    _motherNameController.dispose();
    _bloodController.dispose();
    _personalPhoneController.dispose();
    _presentAddressController.dispose();
    _permanentAddressController.dispose();
    _maritalStatusController.dispose();
    _emergencyContactNameController.dispose();
    _emergencyContactRelationController.dispose();
    _emergencyContactAddressController.dispose();
    _emergencyContactPhoneController.dispose();
    _personalEmailController.dispose();

    _tinNoController.dispose();
    _tinCircleController.dispose();
    _tinZoneController.dispose();
    _employeeOfficeMobileController.dispose();
    _employeeOfficeEmailController.dispose();

    _educationSecondaryInstituteController.dispose();
    _educationSecondaryMajorController.dispose();
    _educationSecondaryInstitutionController.dispose();
    _educationSecondaryResultController.dispose();
    _educationSecondaryPassingYearController.dispose();
    _educationHigherSecondaryInstituteController.dispose();
    _educationHigherSecondaryMajorController.dispose();
    _educationHigherSecondaryInstitutionController.dispose();
    _educationHigherSecondaryResultController.dispose();
    _educationHigherSecondaryPassingYearController.dispose();
    _educationGraduationInstituteController.dispose();
    _educationGraduationMajorController.dispose();
    _educationGraduationInstitutionController.dispose();
    _educationGraduationResultController.dispose();
    _educationGraduationPassingYearController.dispose();
    _educationPostGraduationInstituteController.dispose();
    _educationPostGraduationMajorController.dispose();
    _educationPostGraduationInstitutionController.dispose();
    _educationPostGraduationResultController.dispose();
    _educationPostGraduationPassingYearController.dispose();

    // Dispose controllers for Step 4
    _workExperienceFirstNameController.dispose();
    _workExperienceFirstDesignationController.dispose();
    _workExperienceFirstDateToController.dispose();
    _workExperienceFirstDateFromController.dispose();
    _workExperienceSecondNameController.dispose();
    _workExperienceSecondDesignationController.dispose();
    _workExperienceSecondDateToController.dispose();
    _workExperienceSecondDateFromController.dispose();
    _workExperienceThirdNameController.dispose();
    _workExperienceThirdDesignationController.dispose();
    _workExperienceThirdDateToController.dispose();
    _workExperienceThirdDateFromController.dispose();
    _workExperienceFourthNameController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_currentStep < 3) {
      _pageController.animateToPage(
        _currentStep + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit User'),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentStep = index;
          });
        },
        children: [
          _buildStep1(),
          _buildStep2(),
          _buildStep3(),
          _buildStep4(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentStep,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.first_page), label: 'Step 1'),
          BottomNavigationBarItem(icon: Icon(Icons.navigate_next), label: 'Step 2'),
          BottomNavigationBarItem(icon: Icon(Icons.navigate_next), label: 'Step 3'),
          BottomNavigationBarItem(icon: Icon(Icons.last_page), label: 'Step 4'),
        ],
      ),
    );
  }

  Widget _buildStep1() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text("(*) mandatory field"),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildTextField(_nationalIdController, 'National ID *'),
                _buildTextField(_nameController, 'Name *'),
                GestureDetector(
                  onTap: () async {
                    DateTime? selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (selectedDate != null) {
                      setState(() {
                        _dateOfBirthController.text = "${selectedDate.toLocal()}".split(' ')[0];
                        widget.user.dateOfBirth = _dateOfBirthController.text; // Update user object
                      });
                    }
                  },
                  child: AbsorbPointer(
                    child: _buildTextField(_dateOfBirthController, 'Date of Birth *'),
                  ),
                ),
                _buildTextField(_fatherNameController, 'Father\'s Name *'),
                _buildTextField(_motherNameController, 'Mother\'s Name *'),
                DropdownButtonFormField<String>(
                  value: _bloodController.text.isNotEmpty ? _bloodController.text : null,
                  items: <String>['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _bloodController.text = newValue!;
                      widget.user.blood = newValue; // Update user object
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Blood Group *',
                  ),
                ),
                _buildTextField(_personalPhoneController, 'Personal Phone *'),
                _buildTextArea(_presentAddressController, 'Present Address *'),
                _buildTextArea(_permanentAddressController, 'Permanent Address *'),
                _buildTextField(_maritalStatusController, 'Marital Status *'),
                _buildTextField(_emergencyContactNameController, 'Emergency Contact Name *'),
                _buildTextField(_emergencyContactRelationController, 'Emergency Contact Relation *'),
                _buildTextArea(_emergencyContactAddressController, 'Emergency Contact Address *'),
                _buildTextField(_emergencyContactPhoneController, 'Emergency Contact Phone *'),
                _buildTextField(_personalEmailController, 'Personal Email *'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {

                    // Update the user object with new data
                    widget.user.nationalId = _nationalIdController.text;
                    widget.user.name = _nameController.text;
                    widget.user.dateOfBirth = _dateOfBirthController.text;
                    widget.user.fatherName = _fatherNameController.text;
                    widget.user.motherName = _motherNameController.text;
                    widget.user.blood = _bloodController.text;
                    widget.user.personalPhone = _personalPhoneController.text;
                    widget.user.presentAddress = _presentAddressController.text;
                    widget.user.permanentAddress = _permanentAddressController.text;
                    widget.user.maritalStatus = _maritalStatusController.text;
                    widget.user.emergencyContactName = _emergencyContactNameController.text;
                    widget.user.emergencyContactRelation = _emergencyContactRelationController.text;
                    widget.user.emergencyContactAddress = _emergencyContactAddressController.text;
                    widget.user.emergencyContactPhone = _emergencyContactPhoneController.text;
                    widget.user.personalEmail = _personalEmailController.text;

                    // Save or navigate to the next step
                    if (_validateStep1()) {
                      _nextStep();
                    }
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStep2() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'TIN Information',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildTextField(_tinNoController, 'TIN No.'),
          _buildTextField(_tinCircleController, 'TIN Circle'),
          _buildTextField(_tinZoneController, 'TIN Zone'),
          SizedBox(height: 16,),
          Text(
            'Official Information',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildTextField(_employeeOfficeMobileController, 'Office Mobile'),
          _buildTextField(_employeeOfficeEmailController, 'Office Email'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Update the user object with the data from Step 2
              widget.user.tinNo = _tinNoController.text;
              widget.user.tinCircle = _tinCircleController.text;
              widget.user.tinZone = _tinZoneController.text;
              widget.user.employeeOfficeMobile = _employeeOfficeMobileController.text;
              widget.user.employeeOfficeEmail = _employeeOfficeEmailController.text;

              // Move to the next step
              _nextStep();
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }

  Widget _buildStep3() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Text(
            'Secondary Education Information',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildTextField(_educationSecondaryInstituteController, 'Secondary Institute'),
          _buildTextField(_educationSecondaryMajorController, 'Secondary Major'),
          _buildTextField(_educationSecondaryInstitutionController, 'Secondary Institution'),
          _buildTextField(_educationSecondaryResultController, 'Secondary Result'),
          _buildTextField(_educationSecondaryPassingYearController, 'Secondary Passing Year'),
          Text(
            'Higher Secondary Education Information',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildTextField(_educationHigherSecondaryInstituteController, 'Higher Secondary Institute'),
          _buildTextField(_educationHigherSecondaryMajorController, 'Higher Secondary Major'),
          _buildTextField(_educationHigherSecondaryInstitutionController, 'Higher Secondary Institution'),
          _buildTextField(_educationHigherSecondaryResultController, 'Higher Secondary Result'),
          _buildTextField(_educationHigherSecondaryPassingYearController, 'Higher Secondary Passing Year'),
          Text(
            'Graduation Education Information',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildTextField(_educationGraduationInstituteController, 'Graduation Institute'),
          _buildTextField(_educationGraduationMajorController, 'Graduation Major'),
          _buildTextField(_educationGraduationInstitutionController, 'Graduation Institution'),
          _buildTextField(_educationGraduationResultController, 'Graduation Result'),
          _buildTextField(_educationGraduationPassingYearController, 'Graduation Passing Year'),
          Text(
            'Post Graduation Education Information',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildTextField(_educationPostGraduationInstituteController, 'Post Graduation Institute'),
          _buildTextField(_educationPostGraduationMajorController, 'Post Graduation Major'),
          _buildTextField(_educationPostGraduationInstitutionController, 'Post Graduation Institution'),
          _buildTextField(_educationPostGraduationResultController, 'Post Graduation Result'),
          _buildTextField(_educationPostGraduationPassingYearController, 'Post Graduation Passing Year'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Update the user object with the data from Step 3
              widget.user.educationSecondaryInstitute = _educationSecondaryInstituteController.text;
              widget.user.educationSecondaryMajor = _educationSecondaryMajorController.text;
              widget.user.educationSecondaryInstitution = _educationSecondaryInstitutionController.text;
              widget.user.educationSecondaryResult = _educationSecondaryResultController.text;
              widget.user.educationSecondaryPassingYear = _educationSecondaryPassingYearController.text;
              widget.user.educationHigherSecondaryInstitute = _educationHigherSecondaryInstituteController.text;
              widget.user.educationHigherSecondaryMajor = _educationHigherSecondaryMajorController.text;
              widget.user.educationHigherSecondaryInstitution = _educationHigherSecondaryInstitutionController.text;
              widget.user.educationHigherSecondaryResult = _educationHigherSecondaryResultController.text;
              widget.user.educationHigherSecondaryPassingYear = _educationHigherSecondaryPassingYearController.text;
              widget.user.educationGraduationInstitute = _educationGraduationInstituteController.text;
              widget.user.educationGraduationMajor = _educationGraduationMajorController.text;
              widget.user.educationGraduationInstitution = _educationGraduationInstitutionController.text;
              widget.user.educationGraduationResult = _educationGraduationResultController.text;
              widget.user.educationGraduationPassingYear = _educationGraduationPassingYearController.text;
              widget.user.educationPostGraduationInstitute = _educationPostGraduationInstituteController.text;
              widget.user.educationPostGraduationMajor = _educationPostGraduationMajorController.text;
              widget.user.educationPostGraduationInstitution = _educationPostGraduationInstitutionController.text;
              widget.user.educationPostGraduationResult = _educationPostGraduationResultController.text;
              widget.user.educationPostGraduationPassingYear = _educationPostGraduationPassingYearController.text;

              // Move to the next step
              _nextStep();
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }

  Widget _buildStep4() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          ExpansionTile(
            title: Text(
            'First Work Experience',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
            children: [
              _buildTextField(_workExperienceFirstNameController, 'First Experience - Name'),
              _buildTextField(_workExperienceFirstDesignationController, 'First Experience - Designation'),
              _buildTextField(_workExperienceFirstDateToController, 'First Experience - Date To'),
              _buildTextField(_workExperienceFirstDateFromController, 'First Experience - Date From'),
            ],
          ),
          ExpansionTile(
            title: Text(
              'Second Work Experience',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              _buildTextField(_workExperienceSecondNameController, 'Second Experience - Name'),
              _buildTextField(_workExperienceSecondDesignationController, 'Second Experience - Designation'),
              _buildTextField(_workExperienceSecondDateToController, 'Second Experience - Date To'),
              _buildTextField(_workExperienceSecondDateFromController, 'Second Experience - Date From'),
            ],
          ),
          ExpansionTile(
            title: Text(
              'Third Work Experience',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              _buildTextField(_workExperienceThirdNameController, 'Third Experience - Name'),
              _buildTextField(_workExperienceThirdDesignationController, 'Third Experience - Designation'),
              _buildTextField(_workExperienceThirdDateToController, 'Third Experience - Date To'),
              _buildTextField(_workExperienceThirdDateFromController, 'Third Experience - Date From'),
            ],
          ),
          ExpansionTile(
              title: Text(
                'Fourth Work Experience',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            children: [
              _buildTextField(_workExperienceFourthNameController, 'Fourth Experience - Name'),
              _buildTextField(_workExperienceFourthDesignationController, 'Fourth Experience - Designation'),
              _buildTextField(_workExperienceFourthDateToController, 'Fourth Experience - Date To'),
              _buildTextField(_workExperienceFourthDateFromController, 'Fourth Experience - Date From'),
            ],
          ),
          ExpansionTile(title: Text(
            'Fifth Work Experience',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
            children: [
              _buildTextField(_workExperienceFifthNameController, 'Fifth Experience - Name'),
              _buildTextField(_workExperienceFifthDesignationController, 'Fifth Experience - Designation'),
              _buildTextField(_workExperienceFifthDateToController, 'Fifth Experience - Date To'),
              _buildTextField(_workExperienceFifthDateFromController, 'Fifth Experience - Date From'),

            ],
          ),
          ExpansionTile(title: Text(
            'Sixth Work Experience',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            _buildTextField(_workExperienceSixthNameController, 'Sixth Experience - Name'),
            _buildTextField(_workExperienceSixthDesignationController, 'Sixth Experience - Designation'),
            _buildTextField(_workExperienceSixthDateToController, 'Sixth Experience - Date To'),
            _buildTextField(_workExperienceSixthDateFromController, 'Sixth Experience - Date From'),
          ],
          ),









          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Update the user object with the data from Step 4
              widget.user.workExperienceFirstName = _workExperienceFirstNameController.text;
              widget.user.workExperienceFirstDesignation = _workExperienceFirstDesignationController.text;
              widget.user.workExperienceFirstDateTo = _workExperienceFirstDateToController.text;
              widget.user.workExperienceFirstDateFrom = _workExperienceFirstDateFromController.text;
              widget.user.workExperienceSecondName = _workExperienceSecondNameController.text;
              widget.user.workExperienceSecondDesignation = _workExperienceSecondDesignationController.text;
              widget.user.workExperienceSecondDateTo = _workExperienceSecondDateToController.text;
              widget.user.workExperienceSecondDateFrom = _workExperienceSecondDateFromController.text;
              widget.user.workExperienceThirdName = _workExperienceThirdNameController.text;
              widget.user.workExperienceThirdDesignation = _workExperienceThirdDesignationController.text;
              widget.user.workExperienceThirdDateTo = _workExperienceThirdDateToController.text;
              widget.user.workExperienceThirdDateFrom = _workExperienceThirdDateFromController.text;
              widget.user.workExperienceFourthName = _workExperienceFourthNameController.text;
              widget.user.workExperienceFourthDesignation = _workExperienceFourthDesignationController.text;
              widget.user.workExperienceFourthDateTo = _workExperienceFourthDateToController.text;
              widget.user.workExperienceFourthDateFrom = _workExperienceFourthDateFromController.text;
              widget.user.workExperienceFifthName = _workExperienceFifthNameController.text;
              widget.user.workExperienceFifthDesignation = _workExperienceFifthDesignationController.text;
              widget.user.workExperienceFifthDateTo = _workExperienceFifthDateToController.text;
              widget.user.workExperienceFifthDateFrom = _workExperienceFifthDateFromController.text;
              widget.user.workExperienceSixthName = _workExperienceSixthNameController.text;
              widget.user.workExperienceSixthDesignation = _workExperienceSixthDesignationController.text;
              widget.user.workExperienceSixthDateTo = _workExperienceSixthDateToController.text;
              widget.user.workExperienceSixthDateFrom = _workExperienceSixthDateFromController.text;

              // Move to the next step
              _updateData();
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }


  Widget _buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildTextArea(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        maxLines: 3, // Adjust as needed for text area size
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        ),
      ),
    );
  }

  bool _validateStep1() {
    bool isValid = true;
    // Check if any field is empty
    if (_nationalIdController.text.isEmpty) isValid = false;
    if (_nameController.text.isEmpty) isValid = false;
    if (_dateOfBirthController.text.isEmpty) isValid = false;
    if (_fatherNameController.text.isEmpty) isValid = false;
    if (_motherNameController.text.isEmpty) isValid = false;
    if (_bloodController.text.isEmpty) isValid = false;
    if (_personalPhoneController.text.isEmpty) isValid = false;
    if (_presentAddressController.text.isEmpty) isValid = false;
    if (_permanentAddressController.text.isEmpty) isValid = false;
    if (_maritalStatusController.text.isEmpty) isValid = false;
    if (_emergencyContactNameController.text.isEmpty) isValid = false;
    if (_emergencyContactRelationController.text.isEmpty) isValid = false;
    if (_emergencyContactAddressController.text.isEmpty) isValid = false;
    if (_emergencyContactPhoneController.text.isEmpty) isValid = false;
    if (_personalEmailController.text.isEmpty && widget.user.jobCategory.contains("Management")) isValid = false;

    if (!isValid) {
      // Display an error message if validation fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields.')),
      );
    }

    return isValid;
  }

  Future<void> _updateData() async {
    final response = await http.put(
      Uri.parse('http://192.168.0.103:8080/users/${widget.user.employeeId}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'Poc_Lead': widget.user.pocLead,
        'Point_of_contact': widget.user.pointOfContact,
        'Employee_Id': widget.user.employeeId,
        'Full_Name': widget.user.fullName,
        'Company': widget.user.company,
        'Unit': widget.user.unit,
        'Department': widget.user.department,
        'Section': widget.user.section,
        'Job_Category': widget.user.jobCategory,
        'Designation': widget.user.designation,
        'Employee_Type': widget.user.employeeType,
        'Work_Location': widget.user.workLocation,
        'Reporting_Employee_ID': widget.user.reportingEmployeeId,
        'Reporting_Employee_Name': widget.user.reportingEmployeeName,
        'Reporting_Designation': widget.user.reportingDesignation,
        'Gender': widget.user.gender,
        'Religion': widget.user.religion,
        'National_id': widget.user.nationalId,
        'Name': widget.user.name,
        'Date_of_Birth': widget.user.dateOfBirth,
        'Father_name': widget.user.fatherName,
        'Mother_Name': widget.user.motherName,
        'Blood': widget.user.blood,
        'Personal_Phone': widget.user.personalPhone,
        'Present_Address': widget.user.presentAddress,
        'Permanent_Address': widget.user.permanentAddress,
        'Marital_Status': widget.user.maritalStatus,
        'Emergency_Contact_name': widget.user.emergencyContactName,
        'Emergency_Contact_Relation': widget.user.emergencyContactRelation,
        'Emergency_Contact_Address': widget.user.emergencyContactAddress,
        'Emergency_Contact_Phone': widget.user.emergencyContactPhone,
        'Personal_Email': widget.user.personalEmail,
        'Tin_No': widget.user.tinNo,
        'Tin_Circle': widget.user.tinCircle,
        'Tin_Zone': widget.user.tinZone,
        'Employee_Office_Mobile': widget.user.employeeOfficeMobile,
        'Employee_Office_Email': widget.user.employeeOfficeEmail,
        'Education_Secondary_Institute': widget.user.educationSecondaryInstitute,
        'Education_Secondary_Major': widget.user.educationSecondaryMajor,
        'Education_Secondary_Institution': widget.user.educationSecondaryInstitution,
        'Education_Secondary_Result': widget.user.educationSecondaryResult,
        'Education_Secondary_Passing_Year': widget.user.educationSecondaryPassingYear,
        'Education_Higher_Secondary_Institute': widget.user.educationHigherSecondaryInstitute,
        'Education_Higher_Secondary_Major': widget.user.educationHigherSecondaryMajor,
        'Education_Higher_Secondary_Institution': widget.user.educationHigherSecondaryInstitution,
        'Education_Higher_Secondary_Result': widget.user.educationHigherSecondaryResult,
        'Education_Higher_Secondary_Passing_Year': widget.user.educationHigherSecondaryPassingYear,
        'Education_Graduation_Institute': widget.user.educationGraduationInstitute,
        'Education_Graduation_Major': widget.user.educationGraduationMajor,
        'Education_Graduation_Institution': widget.user.educationGraduationInstitution,
        'Education_Graduation_Result': widget.user.educationGraduationResult,
        'Education_Graduation_Passing_Year': widget.user.educationGraduationPassingYear,
        'Education_POST_Graduation_Institute': widget.user.educationPostGraduationInstitute,
        'Education_POST_Graduation_Major': widget.user.educationPostGraduationMajor,
        'Education_POST_Graduation_Institution': widget.user.educationPostGraduationInstitution,
        'Education_POST_Graduation_Result': widget.user.educationPostGraduationResult,
        'Education_POST_Graduation_Passing_Year': widget.user.educationPostGraduationPassingYear,
        'Work_Experience_First_Name': widget.user.workExperienceFirstName,
        'Work_Experience_First_Designation': widget.user.workExperienceFirstDesignation,
        'Work_Experience_First_Date_To': widget.user.workExperienceFirstDateTo,
        'Work_Experience_First_Date_From': widget.user.workExperienceFirstDateFrom,
        'Work_Experience_Second_Name': widget.user.workExperienceSecondName,
        'Work_Experience_Second_Designation': widget.user.workExperienceSecondDesignation,
        'Work_Experience_Second_Date_To': widget.user.workExperienceSecondDateTo,
        'Work_Experience_Second_Date_From': widget.user.workExperienceSecondDateFrom,
        'Work_Experience_Third_Name': widget.user.workExperienceThirdName,
        'Work_Experience_Third_Designation': widget.user.workExperienceThirdDesignation,
        'Work_Experience_Third_Date_To': widget.user.workExperienceThirdDateTo,
        'Work_Experience_Third_Date_From': widget.user.workExperienceThirdDateFrom,
        'Work_Experience_Fourth_Name': widget.user.workExperienceFourthName,
        'Work_Experience_Fourth_Designation': widget.user.workExperienceFourthDesignation,
        'Work_Experience_Fourth_Date_To': widget.user.workExperienceFourthDateTo,
        'Work_Experience_Fourth_Date_From': widget.user.workExperienceFourthDateFrom,
        'Work_Experience_Fifth_Name': widget.user.workExperienceFifthName,
        'Work_Experience_Fifth_Designation': widget.user.workExperienceFifthDesignation,
        'Work_Experience_Fifth_Date_To': widget.user.workExperienceFifthDateTo,
        'Work_Experience_Fifth_Date_From': widget.user.workExperienceFifthDateFrom,
        'Work_Experience_Sixth_Name': widget.user.workExperienceSixthName,
        'Work_Experience_Sixth_Designation': widget.user.workExperienceSixthDesignation,
        'Work_Experience_Sixth_Date_To': widget.user.workExperienceSixthDateTo,
        'Work_Experience_Sixth_Date_From': widget.user.workExperienceSixthDateFrom,
      }),
    );

    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserListScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to update user')),
      );
    }
  }
}
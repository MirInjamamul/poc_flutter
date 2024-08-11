
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:poc/screens/edit_screen.dart';

import '../models/user.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  User? _user ;
  bool _isLoading = false;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
  }


  void _onSearch() async {
    setState(() {
      _isLoading = true;
    });

    debugPrint("Search Employee ID : $_searchQuery");

    final response = await http.get(Uri.parse('http://192.168.0.103:8080/users/$_searchQuery'));
    if (response.statusCode == 200) {
      final dynamic data = json.decode(response.body);
      setState(() {
        _user = User.fromJson(data);
      });
    } else {
      throw Exception('Failed to load users');
    }
    // Implement your search logic here to find the user based on _searchQuery
    // Example: _selectedUser = await searchUser(_searchQuery);

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Management'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter Employee ID',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _searchQuery = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    onPressed: _onSearch,
                    child: Text('Search'),
                  ),
                ],
              ),
              if (_user != null)
                Center(
                  child: Card(
                    elevation: 6.0,
                    margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDetailText('ID', _user!.employeeId),
                          _buildDetailText('Name', _user!.fullName),
                          _buildDetailText('Company', _user!.company),
                          _buildDetailText('Unit', _user!.unit),
                          _buildDetailText('Department', _user!.department),
                          _buildDetailText('Section', _user!.section),
                          _buildDetailText('Job Category', _user!.jobCategory),
                          _buildDetailText('Designation', _user!.designation),
                          _buildDetailText('Employee Type', _user!.employeeType),
                          _buildDetailText('Work Location', _user!.workLocation),
                          _buildDetailText('Reporting Employee ID', _user!.reportingEmployeeId),
                          _buildDetailText('Reporting Employee Name', _user!.reportingEmployeeName),
                          _buildDetailText('Reporting Designation', _user!.reportingDesignation),
                          _buildDetailText('Gender', _user!.gender),
                          _buildDetailText('Religion', _user!.religion),
                          const SizedBox(height: 16),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditScreen(user: _user!),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, // Text color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                              ),
                              child: Text('Edit', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailText(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        '$label: $value',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }
}
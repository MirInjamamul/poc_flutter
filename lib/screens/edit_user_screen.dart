import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:poc/screens/user_list_screen.dart';

import '../models/user.dart';

class EditUserScreen extends StatefulWidget {
  final User user;
  const EditUserScreen({super.key, required this.user});

  @override
  State<EditUserScreen> createState() => _EditUserScreenState();
}

class _EditUserScreenState extends State<EditUserScreen> {

  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _addressController;
  late TextEditingController _classController;
  late TextEditingController _genderController;
  late TextEditingController _bloodController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _addressController = TextEditingController();
    _classController = TextEditingController();
    _genderController = TextEditingController();
    _bloodController = TextEditingController();
  }

  Future<void> _updateUser() async {

    // final response = await http.put(
    //   Uri.parse('http://192.168.0.103:8080/users/${widget.user.id}'),
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //   body: jsonEncode({
    //     'ID': widget.user.id,
    //     'Name': _nameController.text,
    //     'Email': _emailController.text,
    //     'Address': _addressController.text,
    //     'Class': _classController.text,
    //     'Gender': _genderController.text,
    //     'Blood': _bloodController.text,
    //   }),
    // );
    //
    // if (response.statusCode == 200) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => UserListScreen(),
    //     ),
    //   );  // Go back to the previous screen
    // } else {
    //   // Handle the error
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text('Failed to update user')),
    //   );
    // }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
              ),
              TextField(
                controller: _classController,
                decoration: InputDecoration(labelText: 'Class'),
              ),
              TextField(
                controller: _genderController,
                decoration: InputDecoration(labelText: 'Gender'),
              ),
              TextField(
                controller: _bloodController,
                decoration: InputDecoration(labelText: 'Blood'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _updateUser,
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
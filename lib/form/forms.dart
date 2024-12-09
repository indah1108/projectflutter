
import 'package:flutter/material.dart';

class registrasi extends StatefulWidget {
  @override
  _registrasiState createState() => _registrasiState();
}

class _registrasiState extends State<registrasi> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  String? _selectedGender;
  String? _preferredPosition;

  List<String> genderOptions = ['Male', 'Female'];
  List<String> positionOptions = ['Matematika', 'Bahasa Inggris', 'Bahasa Indonesia'];

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 252, 126, 126),
            title: Text(
              "registrasitration Successful",
              style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
            ),
            content: Text(
              "Wait Until We Confirm Your registrasitration Data!",
              style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Close",
                  style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIODATA PENDAFTARAN LES'),
        backgroundColor: const Color.fromARGB(255, 243, 204, 204),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              const Color.fromARGB(255, 252, 126, 126),
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Full Name',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Name!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _dobController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Date of Birth',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        keyboardType: TextInputType.datetime,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Date Of Birth!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _contactController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Contact Number',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Contact Number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Gender',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        value: _selectedGender,
                        dropdownColor: Colors.white,
                        items: genderOptions.map((gender) {
                          return DropdownMenuItem<String>(
                            value: gender,
                            child: Text(gender,
                                style: TextStyle(color: Colors.black)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Select Your Gender!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Lesson',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        value: _preferredPosition,
                        dropdownColor: Colors.white,
                        items: positionOptions.map((position) {
                          return DropdownMenuItem<String>(
                            value: position,
                            child: Text(position,
                                style: TextStyle(color: Colors.black)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _preferredPosition = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Select Your Position!';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _submitForm,
                        child: Text('SEND'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:communix/screens/homepage.dart';
import 'package:flutter/material.dart';

class YearSelector extends StatefulWidget {
  String gender;
  String language;
  String course;
  YearSelector(
      {Key? key,
      required this.gender,
      required this.language,
      required this.course})
      : super(key: key);

  @override
  _YearSelectorState createState() => _YearSelectorState();
}

class _YearSelectorState extends State<YearSelector> {
  String _selectedCourse = '1st';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black, // Change the color as needed
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Which Course?'),
      ),
      body: Center(
        child: Container(
          height: size.height / 15,
          width: size.width / 2,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Colors.grey[100],
              boxShadow: [
                //Bottom right shadow will be darker
                BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0, 0),
                    blurRadius: 15,
                    spreadRadius: 1),
              ]),
          child: Center(
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(30),
              value: _selectedCourse,
              dropdownColor: Colors.white, // Change the color as needed
              icon: const Icon(Icons.arrow_downward,
                  color: Colors.black), // Change the color as needed
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 24),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCourse = newValue!;
                });
              },
              items: <String>['1st', '2nd', '3rd', '4th']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage(
                        gender: widget.gender,
                        course: widget.course,
                        language: widget.language,
                        year: _selectedCourse,
                      )));
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}

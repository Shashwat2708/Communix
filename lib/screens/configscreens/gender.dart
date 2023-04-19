import 'package:communix/screens/configscreens/course.dart';
import 'package:flutter/material.dart';

class GenderSelector extends StatefulWidget {
  String language;
  GenderSelector({Key? key, required this.language}) : super(key: key);

  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String _selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black, // Change the color as needed
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Which Gender?'),
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
              value: _selectedGender,
              dropdownColor: Colors.white, // Change the color as needed
              icon: const Icon(Icons.arrow_downward,
                  color: Colors.black), // Change the color as needed
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 24),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGender = newValue!;
                });
              },
              items: <String>['Male', 'Female']
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
                  builder: (context) => CourseSelector(
                        gender: _selectedGender,
                        language: widget.language,
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

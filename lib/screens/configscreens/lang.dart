import 'package:communix/screens/configscreens/gender.dart';
import 'package:flutter/material.dart';

class LanguageSelectorPage extends StatefulWidget {
  @override
  _LanguageSelectorPageState createState() => _LanguageSelectorPageState();
}

class _LanguageSelectorPageState extends State<LanguageSelectorPage> {
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black, // Change the color as needed
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Which Language Do You Speak?'),
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
              value: _selectedLanguage,
              dropdownColor: Colors.white, // Change the color as needed
              icon: const Icon(Icons.arrow_downward,
                  color: Colors.black), // Change the color as needed
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 24),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
              items: <String>['Hindi', 'English', 'Tamil', 'Marathi']
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
                  builder: (context) =>
                      GenderSelector(language: _selectedLanguage)));
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

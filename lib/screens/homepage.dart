import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String gender;
  String language;
  String course;
  String year;
  HomePage(
      {super.key,
      required this.gender,
      required this.language,
      required this.course,
      required this.year});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Communix"),
      ),
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Hi There!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // TODO: Navigate to settings page
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {
                // TODO: Navigate to help page
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/communix.png'),
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  widget.course,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/1.png'),
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  widget.year,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/2.png'),
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  widget.gender,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/3.png'),
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  widget.language,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

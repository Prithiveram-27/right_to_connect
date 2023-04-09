import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:right_to_connect/Widgets/app_drawer.dart';

import '../Widgets/custom_dropdown.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: CustomDropDown(),
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Card(
                    color: Color(0XFFEAEAE7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                      title: Text("Prithive"),
                      subtitle: Text("Developer"),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

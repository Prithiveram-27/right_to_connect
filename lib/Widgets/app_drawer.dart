import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.car_crash),
            title: const Text('Automobile'),
            onTap: () {
              Navigator.of(context).pushNamed("/editProfile");
            },
          ),
          ListTile(
            leading: const Icon(Icons.medical_information),
            title: const Text('Medical'),
            onTap: () {
              Navigator.of(context).pushNamed("/NewsScreen");
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

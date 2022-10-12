import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
        body: Center(
          child: Profile(
            imageUrl: 'https://images.unsplash.com/photo-1598618356794-eb1720430eb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
            name: 'Nigina Isam',
            website: 'dkjcbnskj',
            designation: 'dkjcbjfhvb',
            email: 'tarvuz07',
            phone_number: '4875938567398',
        )
    ),
    );
  }
}

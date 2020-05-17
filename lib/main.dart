import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration_test/contacts_repository.dart';
import 'package:flutter_integration_test/contacts_screen.dart';

void main() {
  runApp(ContactsApp());
}

class ContactsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: ContactsScreen(ContactsRepository()),
      debugShowCheckedModeBanner: false,
    );
  }
}

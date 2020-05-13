import 'dart:convert';

import 'package:flutter_integration_test/contact.dart';
import 'package:http/http.dart' as http;

class ContactsRepository {
  Future<List<Contact>> getContacts() async {
    final response = await http.get('https://randomuser.me/api?results=10&seed=contacts');
    final List<Contact> contacts = (json.decode(response.body)['results'] as List).map((contact) {
      return Contact(
        name: _contactJsonToName(contact),
        phone: _contactJsonToPhone(
          contact,
        ),
        image: _contactJsonToImage(contact),
      );
    }).toList();
    return Future.value(contacts);
  }

  String _contactJsonToName(dynamic json) {
    return '${json['name']['first']} ${json['name']['last']}';
  }

  String _contactJsonToPhone(dynamic json) {
    return '${json['cell']}';
  }

  String _contactJsonToImage(dynamic json) {
    return '${json['picture']['large']}';
  }
}

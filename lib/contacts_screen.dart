import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration_test/contact.dart';
import 'package:flutter_integration_test/contact_item.dart';
import 'package:flutter_integration_test/contacts_repository.dart';

class ContactsScreen extends StatelessWidget {
  ContactsScreen(this.contactsRepository);

  final ContactsRepository contactsRepository;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: FutureBuilder<List<Contact>>(
        initialData: [],
        future: contactsRepository.getContacts(),
        builder: (context, snapshot) {
          SliverList contactList;
          if (snapshot.hasData) {
            final contacts = snapshot.data;
            contactList = SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ContactItem(
                    contacts[index],
                  );
                },
                childCount: contacts.length,
              ),
            );
          }
          return CustomScrollView(
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                backgroundColor: Colors.white,
                border: null,
                largeTitle: Text(
                  'Contacts',
                  style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.8)),
                ),
              ),
              contactList ?? SliverFillRemaining(),
            ],
          );
        },
      ),
    );
  }
}

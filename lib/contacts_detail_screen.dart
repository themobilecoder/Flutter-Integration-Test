import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration_test/contact.dart';
import 'package:flutter_integration_test/widgets/profile_address.dart';
import 'package:flutter_integration_test/widgets/profile_header.dart';
import 'package:flutter_integration_test/widgets/slide_in_animation.dart';

class ContactsDetailScreen extends StatelessWidget {
  ContactsDetailScreen(this.contact);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: Colors.white,
            largeTitle: Text(''),
            middle: Text(''),
            border: null,
          ),
          SliverToBoxAdapter(
            child: SlideInAnimation(
              begin: Offset(200, 0),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
                child: ProfileHeader(
                  imageUrl: contact.image,
                  name: contact.name,
                  phone: contact.phone,
                  email: contact.email,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SlideInAnimation(
              begin: Offset(0, 200),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: ProfileAddress(
                  city: contact.city,
                  street: contact.street,
                  postCode: contact.postcode,
                  state: contact.state,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

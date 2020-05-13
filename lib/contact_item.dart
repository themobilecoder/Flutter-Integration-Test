import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration_test/contact.dart';

class ContactItem extends StatelessWidget {
  ContactItem(this.contact);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: CachedNetworkImage(
              imageUrl: contact.image,
              fit: BoxFit.fill,
              width: 56,
              height: 56,
            ),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                contact.name,
                style: contactNameStyle,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                contact.phone,
                style: contactPhoneStyle,
              ),
            ],
          ),
          Spacer(
            flex: 6,
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  static const TextStyle contactNameStyle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle contactPhoneStyle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );
}

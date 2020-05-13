import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration_test/contact.dart';
import 'package:flutter_integration_test/styles.dart';

class ContactItem extends StatelessWidget {
  ContactItem(this.contact, {this.onPressed});

  final Contact contact;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onPressed ?? () {},
        child: Padding(
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
                    style: Styles.contactListNameStyle,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    contact.phone,
                    style: Styles.contactListPhoneStyle,
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
        ),
      ),
    );
  }
}

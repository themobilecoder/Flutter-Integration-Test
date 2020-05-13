import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration_test/styles.dart';

class ProfileHeader extends StatelessWidget {
  ProfileHeader({@required this.imageUrl, @required this.name, @required this.phone, @required this.email});

  final String imageUrl;
  final String name;
  final String phone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Container(
              decoration: Styles.shadowDecoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),
                  Center(child: Text(name, style: Styles.contactListNameStyle.copyWith(fontSize: 28))),
                  SizedBox(
                    height: 4,
                  ),
                  Center(
                      child: Text(phone,
                          style: Styles.contactListPhoneStyle
                              .copyWith(fontSize: 15, color: Theme.of(context).accentColor))),
                  SizedBox(
                    height: 4,
                  ),
                  Center(
                      child: Text(email,
                          style: Styles.contactListPhoneStyle.copyWith(fontSize: 15, color: Colors.grey.shade400))),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: FittedBox(
                child: CachedNetworkImage(
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                  imageUrl: imageUrl,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

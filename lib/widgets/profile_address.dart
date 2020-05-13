import 'package:flutter/material.dart';
import 'package:flutter_integration_test/styles.dart';

class ProfileAddress extends StatelessWidget {
  ProfileAddress({
    @required this.street,
    @required this.city,
    @required this.state,
    @required this.postCode,
  });

  final String street;
  final String city;
  final String state;
  final String postCode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Street',
          style: Styles.headerField,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          street,
          style: Styles.valueField,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'City',
          style: Styles.headerField,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          city,
          style: Styles.valueField,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'State',
          style: Styles.headerField,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          state,
          style: Styles.valueField,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Post code',
          style: Styles.headerField,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          postCode,
          style: Styles.valueField,
        ),
      ],
    );
  }
}

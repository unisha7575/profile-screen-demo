import 'package:flutter/material.dart';

class BasicInformationWidget extends StatelessWidget {
  const BasicInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(100, (i) => const ListTile(
        title: Text("Nisha Kumari"),
        subtitle: Text("I craft stunning user interfaces."),
      )),
    );
  }
}

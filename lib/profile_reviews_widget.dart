import 'package:flutter/material.dart';

class ProfileReviewsWidget extends StatelessWidget {
  const ProfileReviewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(110, (i) => const ListTile(
        subtitle: Text("Delightful user experiences with Flutter",),
      title: Text('Nisha Kumari'),)),
    );
  }
}

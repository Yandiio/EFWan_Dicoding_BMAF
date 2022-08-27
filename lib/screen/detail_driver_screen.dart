import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/driver.dart';

class DetailDriverScreen extends StatelessWidget {
  final Driver driver;
  const DetailDriverScreen({Key? key, required this.driver}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(driver.driverImageUrl!),
            Row(
              children: [
                Text(driver.firstName!),
              ],
            ),
            Text(driver.lastName!),
            Text(driver.standing!),
            Text(driver.point.toString()),
            Text(driver.dob!),
            Text(driver.teamName!),
            Image.network(driver.teamCarImageUrl!),
            Image.network(driver.helmetImageUrl!),
          ],
        ),
      ),
    );
  }
}

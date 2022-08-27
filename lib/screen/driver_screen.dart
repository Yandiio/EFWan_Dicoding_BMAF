import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/data/list_data_driver.dart';
import 'package:flutter_dicoding_submission/models/driver.dart';
import 'package:flutter_dicoding_submission/widgets/card_driver.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Driver> driverList = list_data_driver;

    return Scaffold(
      appBar: AppBar(title: Text('Drivers')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ListView(
            scrollDirection: Axis.vertical,
            children: driverList.map((e) {
              return CardDriver(driver: e);
            }).toList(),
          );
        },
      ),
    );
  }
}

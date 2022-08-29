import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/data/list_data_driver.dart';
import 'package:flutter_dicoding_submission/models/driver.dart';
import 'package:flutter_dicoding_submission/widgets/card_grid_driver.dart';
import 'package:flutter_dicoding_submission/widgets/card_list_driver.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Driver> driverList = list_data_driver;

    return Scaffold(
      appBar: AppBar(title: const Text('Drivers')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 700) {
            return GridView.builder(
              itemCount: driverList.length,
              itemBuilder: (BuildContext context, int index) {
                return CardGridDriver(driver: driverList[index]);
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20),
            );
          } else {
            return ListView(
              scrollDirection: Axis.vertical,
              children: driverList.map((e) {
                return CardListDriver(driver: e);
              }).toList(),
            );
          }
        },
      ),
    );
  }
}

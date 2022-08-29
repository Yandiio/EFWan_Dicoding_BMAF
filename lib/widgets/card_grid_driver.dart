import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/screen/detail_driver_screen.dart';
import 'package:flutter_dicoding_submission/utils/theme.dart';

import '../models/driver.dart';

class CardGridDriver extends StatelessWidget {
  final Driver driver;
  const CardGridDriver({Key? key, required this.driver}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailDriverScreen(driver: driver);
        }));
      },
      child: Card(
        color: Color(driver.teamColorHex ?? 0xfffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${driver.carNumber}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontFamily: 'IBM Plex Mono',
                                      fontWeight: FontWeight.w200),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  '${driver.firstName}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'IBM Plex Mono',
                                      fontWeight: FontWeight.w200),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  '${driver.lastName}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'IBM Plex Mono',
                                      fontWeight: FontWeight.w200),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(8.0),
                                  color:
                                      Color(driver.teamColorHex ?? 0xfffffff)),
                              child: driver.driverImageUrl != null
                                  ? Image.network(driver.driverImageUrl ?? "-")
                                  : Image.asset('name'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

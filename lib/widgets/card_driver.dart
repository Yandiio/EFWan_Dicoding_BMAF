import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/screen/detail_driver_screen.dart';
import 'package:flutter_dicoding_submission/utils/theme.dart';

import '../models/driver.dart';

class CardDriver extends StatelessWidget {
  final Driver driver;
  const CardDriver({Key? key, required this.driver}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailDriverScreen(driver: driver);
        }));
      },
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${driver.carNumber}',
                                style: textNumber,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '${driver.firstName}',
                                style: textCardTitle,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '${driver.lastName}',
                                style: textCardTitle,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Color(driver.teamColorHex ?? 0xfffffff)),
                            child: driver.driverImageUrl != null
                                ? Image.network(driver.driverImageUrl ?? "-")
                                : Image.asset('name'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: '${driver.point}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: ' Pts')
                                    ]),
                                  ),
                                )),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${driver.teamName}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Bio',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.info_sharp,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
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

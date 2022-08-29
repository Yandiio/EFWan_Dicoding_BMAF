import 'package:flutter/material.dart';

import '../models/driver.dart';
import '../utils/theme.dart';

class DetailDriverScreen extends StatelessWidget {
  final Driver driver;
  const DetailDriverScreen({Key? key, required this.driver}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 900) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Driver Detail'),
            ),
            body: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      driver.driverImageUrl!,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.network(
                                  driver.nationalityImageUrl!,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  '${driver.firstName} ${driver.lastName}',
                                  style: textTitle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const Text('Country',
                                            style: textHeaderCard),
                                        Text(driver.nationality!),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const Text('D.O.B',
                                            style: textHeaderCard),
                                        Text('${driver.dob}'),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const Text('Point Scored',
                                            style: textHeaderCard),
                                        Text('${driver.point} Pts'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 24.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const Text('Car Number',
                                            style: textHeaderCard),
                                        Text(driver.carNumber.toString()),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const Text('Team',
                                            style: textHeaderCard),
                                        Text(driver.teamName!),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const Text('Position',
                                            style: textHeaderCard),
                                        Text(driver.standing!),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: driver.driverImageUrl!.isNotEmpty
                                    ? Image.network(
                                        driver.teamCarImageUrl!,
                                      )
                                    : const Text("-"),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Expanded(
                                child: driver.helmetImageUrl!.isNotEmpty
                                    ? Image.network(
                                        driver.helmetImageUrl!,
                                      )
                                    : const Text("-"),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Driver Detail'),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      driver.driverImageUrl!,
                      width: double.infinity,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(
                            driver.nationalityImageUrl!,
                            height: 50,
                            width: 50,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            '${driver.firstName} ${driver.lastName}',
                            style: textTitle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Text('Country', style: textHeaderCard),
                              Text(driver.nationality!),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text('D.O.B', style: textHeaderCard),
                              Text('${driver.dob}'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text('Point Scored', style: textHeaderCard),
                              Text('${driver.point} Pts'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Text('Car Number', style: textHeaderCard),
                              Text(driver.carNumber.toString()),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text('Team', style: textHeaderCard),
                              Text(driver.teamName!),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text('Position', style: textHeaderCard),
                              Text(driver.standing!),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Helmet',
                          style: textHeaderInfo,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        driver.helmetImageUrl!.isNotEmpty
                            ? Image.network(
                                driver.helmetImageUrl!,
                              )
                            : const Text("-"),
                        const SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    ));
  }
}

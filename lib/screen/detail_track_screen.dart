import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dicoding_submission/utils/theme.dart';

import '../models/track.dart';

class DetailTrackScreen extends StatelessWidget {
  final Track track;
  const DetailTrackScreen({Key? key, required this.track}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 900) {
            return Scaffold(
                appBar: AppBar(
                  title: Text('Track Detail ${constraints.maxWidth}'),
                ),
                body: _detailWideScreen());
          } else {
            return Scaffold(
                appBar: AppBar(
                  title: Text('Track Detail ${constraints.maxWidth}'),
                ),
                body: _detailSmallScreen());
          }
        },
      ),
    );
  }

  Widget _detailSmallScreen() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(track.trackImageUrl!),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  track.nationalityImageUrl!,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  track.name!,
                  style: textTitle,
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('Country', style: textHeaderCard),
                      Text(track.nationality!),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('First Grand Prix', style: textHeaderCard),
                      Text(track.firstGrandPrix!),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('Circuit Length', style: textHeaderCard),
                      Text('${track.circuitLength.toString()} Km'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('Number of Laps', style: textHeaderCard),
                      Text(track.numberOfLaps.toString()),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('Fastest Lap', style: textHeaderCard),
                      Text(track.lapRecord!),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('Race Distance', style: textHeaderCard),
                      Text('${track.raceDistance.toString()} Km'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'About This Track',
              style: textHeaderInfo,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              track.aboutTrack!,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 36,
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailWideScreen() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Image.network(track.trackImageUrl!)),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        track.nationalityImageUrl!,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        track.name!,
                        style: textTitle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text('Number of Laps', style: textHeaderCard),
                                Text(track.numberOfLaps.toString()),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text('Fastest Lap', style: textHeaderCard),
                                Text(track.lapRecord!),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text('Race Distance', style: textHeaderCard),
                                Text('${track.raceDistance.toString()} Km'),
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
                                Text('Country', style: textHeaderCard),
                                Text(track.nationality!),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text('First Grand Prix', style: textHeaderCard),
                                Text(track.firstGrandPrix!),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text('Circuit Length', style: textHeaderCard),
                                Text('${track.circuitLength.toString()} Km'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      'About This Track',
                      style: textHeaderInfo,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      track.aboutTrack!,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

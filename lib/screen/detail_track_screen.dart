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
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Expanded(child: Image.network(track.nationalityImageUrl!)),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      track.name!,
                      style: textTitle,
                    ),
                  ),
                ],
              ),
              Image.network(track.trackImageUrl!),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text('Country'),
                        Text(track.nationality!),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text('First Grand Prix'),
                        Text(track.firstGrandPrix!),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text('Circuit Length'),
                        Text('${track.circuitLength.toString()} Km'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text('Number of Laps'),
                        Text(track.numberOfLaps.toString()),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text('Fastest Lap'),
                        Text(track.lapRecord!),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text('Race Distance'),
                        Text('${track.raceDistance.toString()} Km'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text('About This Track'),
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
              Text('Images'),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('images/drivers.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('images/drivers.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('images/drivers.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('images/drivers.jpg'),
                        ),
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

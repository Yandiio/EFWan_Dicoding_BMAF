import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/models/track.dart';
import 'package:flutter_dicoding_submission/screen/detail_track_screen.dart';

import '../utils/theme.dart';

class CardTrack extends StatelessWidget {
  final Track track;
  const CardTrack({Key? key, required this.track}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailTrackScreen(track: track);
        }));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: NetworkImage(track.trivia!, scale: 10.0),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16.0),
            // image:
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
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: track.trackImageUrl != null
                                  ? Image.network(
                                      track.nationalityImageUrl ?? "-")
                                  : Image.asset('name'),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${track.nationality}',
                                  style: textCardTitle,
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  '${track.name}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontFamily: 'IBM Plex Mono',
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.start,
                                ),
                                // Text(
                                //   '${track.lastName}',
                                //   style: textCardTitle,
                                //   textAlign: TextAlign.start,
                                // ),
                              ],
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
                                    color: Colors.black87,
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${track.heldDate}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black87,
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: '${track.numberOfLaps}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(text: ' Laps')
                                      ]),
                                    ),
                                  )),
                              const SizedBox(
                                width: 4.0,
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_circle_right_outlined,
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
      ),
    );
  }
}

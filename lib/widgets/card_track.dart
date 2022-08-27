import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/models/track.dart';
import 'package:flutter_dicoding_submission/screen/detail_track_screen.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(track.trackImageUrl!),
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(track.name!),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: [
                    Expanded(child: Image.network(track.nationalityImageUrl!)),
                    Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(track.nationality!),
                        )),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

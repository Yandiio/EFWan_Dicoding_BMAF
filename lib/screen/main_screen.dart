import 'package:flutter/material.dart';
import 'package:flutter_dicoding_submission/screen/driver_screen.dart';
import 'package:flutter_dicoding_submission/screen/track_screen.dart';
import 'package:flutter_dicoding_submission/utils/theme.dart';
import 'package:flutter_dicoding_submission/widgets/card_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return _menuVertical();
        } else {
          return _menuHorizontal();
        }
      },
    );
  }

  Widget _menuHorizontal() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Information',
                style: TextStyle(
                    fontFamily: 'IBM Plex Mono',
                    fontWeight: FontWeight.bold,
                    fontSize: 36.0),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: CardMenu(
                    title: 'Drivers',
                    imgAssets: 'images/drivers.jpg',
                    route: DriverScreen(),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: CardMenu(
                    title: 'Tracks',
                    imgAssets: 'images/tracks.jpg',
                    route: TrackScreen(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuVertical() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Information',
                  style: TextStyle(
                      fontFamily: 'IBM Plex Mono',
                      fontWeight: FontWeight.bold,
                      fontSize: 36.0),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Expanded(
                    child: CardMenu(
                      title: 'Drivers',
                      imgAssets: 'images/drivers.jpg',
                      route: DriverScreen(),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: CardMenu(
                      title: 'Tracks',
                      imgAssets: 'images/tracks.jpg',
                      route: TrackScreen(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CardMenu(
                    title: 'Drivers',
                    imgAssets: 'images/drivers.jpg',
                    route: DriverScreen(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardMenu(
                    title: 'Tracks',
                    imgAssets: 'images/tracks.jpg',
                    route: TrackScreen(),
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

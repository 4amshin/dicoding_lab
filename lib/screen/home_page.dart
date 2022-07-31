import 'package:dicoding_lab0/model/tourism_pace.dart';
import 'package:dicoding_lab0/screen/detail_screen.dart';
import 'package:dicoding_lab0/screen/tourism_grid.dart';
import 'package:dicoding_lab0/screen/tourism_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const TourismList();
          } else if (constraints.maxWidth <= 800) {
            return const TourismGrid(
              gridCount: 3,
            );
          } else if (constraints.maxWidth <= 1200) {
            return const TourismGrid(
              gridCount: 4,
            );
          } else {
            return const TourismGrid(
              gridCount: 6,
            );
          }
        },
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Wisata Kambo',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'font1',
          fontSize: 27,
        ),
      ),
      centerTitle: true,
    );
  }
}

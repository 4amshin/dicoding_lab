import 'package:flutter/material.dart';

import 'package:dicoding_lab0/components/favorite_button.dart';
import 'package:dicoding_lab0/model/tourism_place.dart';
import 'package:dicoding_lab0/screen/detailPage_mobile.dart';
import 'package:dicoding_lab0/screen/detailPage_web.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 700) {
        return DetailPageMobile(place: place);
      } else {
        return DetailPageWeb(place: place);
      }
    });
  }
}

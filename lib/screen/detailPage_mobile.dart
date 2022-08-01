import 'package:dicoding_lab0/components/favorite_button.dart';
import 'package:flutter/material.dart';

import 'package:dicoding_lab0/model/tourism_pace.dart';

class DetailPageMobile extends StatefulWidget {
  final TourismPlace place;
  const DetailPageMobile({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  State<DetailPageMobile> createState() => _DetailPageMobileState();
}

class _DetailPageMobileState extends State<DetailPageMobile> {
  final _scrollController = ScrollController();
  bool isFavorite = false;
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                    tag: widget.place.heroTag,
                    child: Image.asset(
                      widget.place.imageAsset,
                      width: 400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _icon(
                    icon: Icons.calendar_today,
                    text: widget.place.openDays,
                  ),
                  const SizedBox(width: 25),
                  _icon(
                    icon: Icons.access_time,
                    text: widget.place.openTime,
                  ),
                  const SizedBox(width: 25),
                  _icon(
                    icon: Icons.monetization_on,
                    text: widget.place.ticketPrice,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  widget.place.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              Scrollbar(
                controller: _scrollController,
                child: SizedBox(
                  height: 150,
                  child: ListView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    children: widget.place.imageUrls.map((assets) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(assets),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _icon({required IconData icon, required String text}) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        widget.place.name,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: 'font2',
          fontSize: 35,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
        color: Colors.black,
      ),
      actions: const [
        FavoriteButton(),
      ],
    );
  }
}

import 'package:dicoding_lab0/components/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_lab0/model/tourism_place.dart';

class DetailPageWeb extends StatefulWidget {
  final TourismPlace place;
  const DetailPageWeb({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  State<DetailPageWeb> createState() => _DetailPageWebState();
}

class _DetailPageWebState extends State<DetailPageWeb> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 16,
        ),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wisata Kambo',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'font1',
                    fontSize: 27,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 400,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Hero(
                                tag: widget.place.heroTag,
                                child: Image.asset(
                                  widget.place.imageAsset,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Scrollbar(
                            controller: _scrollController,
                            child: SizedBox(
                              height: 100,
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.place.imageUrls.map((assets) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      right: 15,
                                    ),
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
                    const SizedBox(width: 25),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Text(
                                  widget.place.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'font2',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _icon(
                                        icon: Icons.calendar_today,
                                        text: widget.place.openDays,
                                      ),
                                      const SizedBox(height: 10),
                                      _icon(
                                        icon: Icons.access_time,
                                        text: widget.place.openTime,
                                      ),
                                      const SizedBox(height: 10),
                                      _icon(
                                        icon: Icons.monetization_on,
                                        text: widget.place.ticketPrice,
                                      ),
                                    ],
                                  ),
                                  const FavoriteButton(),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  widget.place.description,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _icon({required IconData icon, required String text}) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10),
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
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
        color: Colors.black,
      ),
    );
  }
}

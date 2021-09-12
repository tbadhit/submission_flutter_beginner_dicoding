import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_fluter_dicoding/model/tourism_place.dart';
import 'package:submission_fluter_dicoding/widgets/favourite_button.dart';

import 'detail_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            Icon(Icons.search, color: Colors.black),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.settings, color: Colors.black),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text('Wisata Serang',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
                ),
                Text('View',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tourismPlaceList.length,
                    itemBuilder: (context, index) {
                      final TourismPlace place = tourismPlaceList[index];
                      return Stack(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 20, bottom: 20, right: 10),
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(place.imageAsset),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            right: 9,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              child: FavoriteButton(),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                Text('Recomended',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: tourismPlaceList.length,
                  itemBuilder: (context, index) {
                    final TourismPlace place = tourismPlaceList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(
                            place: place,
                          );
                        }));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.asset(place.imageAsset)),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        place.name,
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(place.location),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }
}

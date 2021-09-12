import 'package:flutter/material.dart';
import 'package:submission_fluter_dicoding/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key, required this.place}) : super(key: key);
  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Detail',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    place.name,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(place.description)),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(place.imageAsset)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 30,
                      ),
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(place.openDays,
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          Text("(Open Days)",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey)),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 30),
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(place.openTime,
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          Text("(Open Time)",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey)),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.monetization_on, size: 30),
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(place.ticketPrice,
                              style: TextStyle(
                                fontSize: 10,
                              )),
                          Text("(Ticket)",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey)),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text('Gallery',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: place.imageUrls.map((url) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(url),
                        ),
                      );
                    }).toList()),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

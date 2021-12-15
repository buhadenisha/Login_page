import 'package:companyproject/colors.dart';
import 'package:companyproject/imagespath.dart';
import 'package:companyproject/string.dart';
import 'package:flutter/material.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({Key? key}) : super(key: key);

  @override
  _HotelDetailState createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            pinkShade,
            pinkShade,
            purple,
          ],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: transparent,
            title: Text(hotelDetails),
            centerTitle: true,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 300,
                //width: 500,
                child: ListView.builder(
                    itemCount: hotelRoomImages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        //height: 50,
                        width: 250,

                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: black, width: 3.0),
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            image: NetworkImage(hotelRoomImages[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    'bjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjsbjbjbjbsdbfksbfjshjshfjs'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(goBack))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:companyproject/colors.dart';
import 'package:companyproject/icons.dart';
import 'package:companyproject/imagespath.dart';
import 'package:companyproject/string.dart';
import 'package:companyproject/textformating.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:companyproject/coman.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: PlaceDetail()));
}

class PlaceDetail extends StatefulWidget {
  const PlaceDetail({Key? key}) : super(key: key);

  @override
  _PlaceDetailState createState() => _PlaceDetailState();
}

class _PlaceDetailState extends State<PlaceDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            pinkShade,
            pinkShado,
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

            leading: IconButton(
              icon: Icon(
                arrowBack,
                color: black,
              ),
              onPressed: () {
                setState(() {});
              },
            ),
            centerTitle: true,
            title: AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(bankok, textStyle: txtStyle),
              ],
              totalRepeatCount: 5000000000000,
              pause: const Duration(milliseconds: 10),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(
                  items: [
                    placePhotoSlider(
                      placePhotoName1,
                      img,
                      tealAccet,
                      templeOfDawnDetails,
                      hotelImg2,
                    ),
                    placePhotoSlider(
                      placePhotoName2,
                      img2,
                      yellow,
                      theGoldenMount,
                      hotelImg3,
                    ),
                    placePhotoSlider(
                      placePhotoName3,
                      img3,
                      white,
                      jimThompsonHouse,
                      hotelImg4,
                    ),
                    placePhotoSlider(
                      placePhotoName4,
                      img4,
                      cyanAccent,
                      siamParagon,
                      hotelImg5,
                    ),
                    placePhotoSlider(
                      placePhotoName5,
                      img5,
                      black,
                      watPhraChetuphon,
                      hotelImg1,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 680,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    viewportFraction: 0.8,
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     ElevatedButton(
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => HotelDetail()),
                //           );
                //         },
                //         style: ElevatedButton.styleFrom(
                //             primary: Colors.deepPurple.shade400,
                //             padding: EdgeInsets.symmetric(
                //                 horizontal: 30, vertical: 10),
                //             textStyle: TextStyle(
                //                 fontSize: 18, fontWeight: FontWeight.bold)),
                //         child: Text('Hotel Booking')),
                //     ElevatedButton(
                //       onPressed: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(builder: (context) => HotelDetail()),
                //         );
                //       },
                //       style: ElevatedButton.styleFrom(
                //           primary: Colors.deepPurple.shade400,
                //           padding:
                //               EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                //           textStyle: TextStyle(
                //               fontSize: 30, fontWeight: FontWeight.bold)),
                //       child: Icon(Icons.location_on_rounded),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

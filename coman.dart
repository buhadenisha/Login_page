import 'package:companyproject/colors.dart';
import 'package:companyproject/hoteldetails.dart';

import 'package:flutter/material.dart';

Widget placeNameSlider(text, color) {
  return Container(
    color: color,
    child: Text(text),
  );
}

Widget placePhotoSlider(
  txt,
  imgPath,
  clr,
  text,
  hotelImg,
) {
  return Stack(
    children: [
      Card(
        elevation: 20,
        shadowColor: Colors.green,
        child: Container(
          color: pinkShade,
          child: Column(
            children: [
              Card(
                color: pinkShade,
                elevation: 25,
                shadowColor: Colors.pink,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        txt,
                        style: TextStyle(color: clr, fontSize: 20),
                      )
                    ],
                  ),
                  width: 320.0,
                  height: 230,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: black, width: 3.0),
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                      image: NetworkImage(imgPath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                child: Text(text),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: hotelImg.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HotelDetail()));
                        },
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          margin: const EdgeInsets.all(7.0),
                          width: 220,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: black, width: 3.0),
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(hotelImg[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

// ignore_for_file: avoid_unnecessary_containers, prefer_typing_uninitialized_variables, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/api/weatherapi.dart';
import 'package:weather_app/pages/date.dart';
import 'package:weather_app/pages/location.dart';

class ScreenHomePage extends StatelessWidget {
  var client = WeatherData();
  var data;

  info() async {
    var position = await getPosition();
    data = await client.getData(position.latitude, position.longitude);
    return data;
  }

  Widget loading() {
    return SizedBox(
      height: 50,
      width: 50,
      child: Lottie.asset('assets/images/98788-loading.json'),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder(
          future: info(),
          builder: (context, snapshot) {
            return Container(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10, left: 10),
                    height: size.height * 0.68,
                    width: size.width,
                    padding: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 149, 92, 209),
                              Color.fromARGB(255, 63, 162, 250)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: [0.2, 0.85])),
                    child: Column(
                      children: [
                        data != null
                            ? Text('${data?.city}',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9),
                                    fontSize: 35,
                                    fontFamily: GoogleFonts.inder().fontFamily))
                            : loading(),
                        Text(dateform,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 15,
                                fontFamily: GoogleFonts.inder().fontFamily)),
                        data != null
                            ? Image.network(
                                'https:${data?.icon}',
                                width: size.width * 0.4,
                                fit: BoxFit.fill,
                              )
                            : loading(),
                        data != null
                            ? Text('${data?.condition}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:
                                        GoogleFonts.hubballi().fontFamily))
                            : loading(),
                        data != null
                            ? Text('${data?.temp}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w800,
                                    fontFamily:
                                        GoogleFonts.hubballi().fontFamily))
                            : loading(),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/icons8-wind-96.png',
                                    width: size.width * 0.1,
                                  ),
                                  data != null
                                      ? Text('${data?.wind} km/h',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.hubballi()
                                                  .fontFamily,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))
                                      : loading(),
                                  Text('Wind',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6),
                                          fontFamily:
                                              GoogleFonts.inder().fontFamily,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold))
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/icons8-humidity-80.png',
                                    width: size.width * 0.1,
                                  ),
                                  data != null
                                      ? Text('${data?.humidity}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.hubballi()
                                                  .fontFamily,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))
                                      : loading(),
                                  Text('Humidity',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6),
                                          fontFamily:
                                              GoogleFonts.inder().fontFamily,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold))
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/icons8-winddirection-64.png',
                                    width: size.width * 0.1,
                                  ),
                                  data != null
                                      ? Text('${data?.winddir}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.hubballi()
                                                  .fontFamily,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))
                                      : loading(),
                                  Text('Wind Direction',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6),
                                          fontFamily:
                                              GoogleFonts.inder().fontFamily,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold))
                                ],
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Text('Gust',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: GoogleFonts.inder().fontFamily,
                                  fontSize: 17)),
                          const SizedBox(
                            height: 5,
                          ),
                          data != null
                              ? Text('${data?.gust} kp/h',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.hubballi().fontFamily,
                                      fontSize: 23))
                              : loading(),
                          const SizedBox(
                            height: 30,
                          ),
                          Text('Pressure',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: GoogleFonts.inder().fontFamily,
                                  fontSize: 17)),
                          const SizedBox(
                            height: 5,
                          ),
                          data != null
                              ? Text('${data?.pressure} hpa',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.hubballi().fontFamily,
                                      fontSize: 23))
                              : loading(),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text('UV',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: GoogleFonts.inder().fontFamily,
                                  fontSize: 17)),
                          const SizedBox(
                            height: 5,
                          ),
                          data != null
                              ? Text('${data?.uv}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.hubballi().fontFamily,
                                      fontSize: 23))
                              : loading(),
                          const SizedBox(
                            height: 30,
                          ),
                          Text('Precipitation',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: GoogleFonts.inder().fontFamily,
                                  fontSize: 17)),
                          const SizedBox(
                            height: 5,
                          ),
                          data != null
                              ? Text('${data?.precipice} mm',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.hubballi().fontFamily,
                                      fontSize: 23))
                              : loading(),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text('Wind',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: GoogleFonts.inder().fontFamily,
                                  fontSize: 17)),
                          const SizedBox(
                            height: 5,
                          ),
                          data != null
                              ? Text('${data?.wind} km/h',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.hubballi().fontFamily,
                                      fontSize: 23))
                              : loading(),
                          const SizedBox(
                            height: 30,
                          ),
                          Text('Last Update',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: GoogleFonts.inder().fontFamily,
                                  fontSize: 17)),
                          const SizedBox(
                            height: 5,
                          ),
                          data != null
                              ? Text('${data?.lastupdate}',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontFamily:
                                          GoogleFonts.hubballi().fontFamily,
                                      fontSize: 16))
                              : loading(),
                        ],
                      )),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}

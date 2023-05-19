// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHomePage extends StatefulWidget {
  const ScreenHomePage({super.key});

  @override
  State<ScreenHomePage> createState() => _ScreenHomePageState();
}

class _ScreenHomePageState extends State<ScreenHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10, left: 10),
              height: size.height * 0.65,
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
                  Text('Calicut',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 35,
                          fontFamily: GoogleFonts.inder().fontFamily)),
                  Text('Wednesday, 17 May',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                          fontFamily: GoogleFonts.inder().fontFamily)),
                  Image.asset(
                    'assets/images/icons8-sunny-64.png',
                    width: size.width * 0.3,
                  ),
                  Text('Sunny',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.hubballi().fontFamily)),
                  Text('15°',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w800,
                          fontFamily: GoogleFonts.hubballi().fontFamily)),
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
                            Text('17.1 km/h',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily:
                                        GoogleFonts.hubballi().fontFamily,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text('Wind',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: GoogleFonts.inder().fontFamily,
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
                            Text('81',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily:
                                        GoogleFonts.hubballi().fontFamily,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text('Humidity',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: GoogleFonts.inder().fontFamily,
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
                            Text('SE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily:
                                        GoogleFonts.hubballi().fontFamily,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text('Wind Direction',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: GoogleFonts.inder().fontFamily,
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
                    Text('32.0 kp/h',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.hubballi().fontFamily,
                            fontSize: 23)),
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
                    Text('1025.0 hpa',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.hubballi().fontFamily,
                            fontSize: 23)),
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
                    Text('1.0',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.hubballi().fontFamily,
                            fontSize: 23)),
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
                    Text('0.0 mm',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.hubballi().fontFamily,
                            fontSize: 23)),
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
                    Text('32.1 km/h',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.hubballi().fontFamily,
                            fontSize: 23)),
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
                    Text('2023-05-17',
                        style: TextStyle(
                            color: Colors.green,
                            fontFamily: GoogleFonts.hubballi().fontFamily,
                            fontSize: 23)),
                  ],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

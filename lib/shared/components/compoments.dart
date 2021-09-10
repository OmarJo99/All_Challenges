import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Widget itemlist({
 required String imagepath, 
 required double imageborder,
 required BoxFit imagefit
}) =>
    Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            height: 120,
            child: Row(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(imageborder),
                  child: Image.asset(
                    imagepath,
                    width: 100,
                    height: 100,
                    fit: imagefit,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Container(
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                color: HexColor('1dbc46'),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text('RUNNING',
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9,
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                color: HexColor('1dbc46'),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text('TRANING',
                                    style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            width: 200,
                            child: Text(
                                'Your Full Marathon Training Plan -20 Weeks',
                                maxLines: 2,
                                style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600))),
                        Text('May 20,2021',
                            style: GoogleFonts.cairo(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.featherAlt,
                                size: 10,
                                color: Colors.grey[500],
                              ),
                            ),
                            Text('Logan',
                                style: GoogleFonts.coda(
                                    fontSize: 12, color: Colors.grey[600])),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.messenger_outline,
                                size: 11,
                                color: Colors.grey[500],
                              ),
                            ),
                            Text('19',
                                style: GoogleFonts.coda(
                                    fontSize: 12, color: Colors.grey[600])),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );

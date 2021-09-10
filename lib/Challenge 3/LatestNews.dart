import 'package:Challenges/Challenge%202/Cloud_Animation.dart';
import 'package:Challenges/shared/components/compoments.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class LatestNews extends StatefulWidget {
  LatestNews({Key? key}) : super(key: key);

  @override
  _LatestNewsState createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  bool? istrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Center(
            child: Text('Latest News',
                style: GoogleFonts.coda(fontSize: 18, color: Colors.black)),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black, size: 24),
            tooltip: 'Search',
            onPressed: () {
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Cloud()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: HexColor('f4f4f4'),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.sort,
                              size: 16,
                              color: HexColor('2971bd'),
                            ),
                          ),
                          Text('Sort',
                              style: GoogleFonts.coda(
                                  fontSize: 12, color: Colors.grey[600])),
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.poll,
                              size: 16,
                              color: HexColor('2971bd'),
                            ),
                          ),
                          Text('Refine',
                              style: GoogleFonts.coda(
                                  fontSize: 12, color: Colors.grey[600])),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Checkbox(
                            value: istrue,
                            onChanged: (value) {
                              setState(() {
                                istrue = !istrue!;
                              });
                            },
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.thList,
                              size: 16,
                              color: HexColor('2971bd'),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  ListView.separated(
                      reverse: true,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => itemlist(
                          imagepath: 'assets/Images/1.jpg',
                          imageborder: 10,
                          imagefit: BoxFit.cover),
                      separatorBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.grey[300],
                            ),
                          ),
                      itemCount: 10)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

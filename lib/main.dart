import 'package:flutter/material.dart';
import 'package:priority_bh/cards.dart';

void main() => runApp(MaterialApp(
      home: Priority(),
    ));

class Priority extends StatefulWidget {
  @override
  _PriorityState createState() => _PriorityState();
}

class _PriorityState extends State<Priority> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    int length = 5;
    List<Cards> cards = [
      Cards(txt: 'TOURISM & HOSPITALITY', url: 'assets/pearl.png'),
      Cards(txt: 'HEALTHCARE & WELFARE', url: 'assets/Premium.png'),
      Cards(txt: 'MEDIA & EVENT PLANNING', url: 'assets/Perfection.png'),
      Cards(txt: 'VIP SERVICES', url: 'assets/Prestige.png'),
      Cards(txt: 'BUSINESS ASSISTANCE', url: 'assets/Property.png'),
    ];

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100,),

            Container(
             // color: Colors.blueAccent,
              width: screenWidth/2,
              // height: screenHeight /3,
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
            Container(
              //color: Colors.black,
                width: screenWidth,
               height: screenHeight / 2,

                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                      //padding: const EdgeInsets.all(8),
                      itemCount: cards.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: screenWidth,
                                  height: screenHeight / 8,
                                  child: Card(
                                    color: Color.fromRGBO(0xDF, 0xDA, 0xAB, 1),
                                  ),
                                  decoration: BoxDecoration(
                                    //color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 10, 1, 1),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: screenWidth,
                                  height: screenHeight / 8,
                                  child: Image(
                                    image: AssetImage(
                                      cards[index].url,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 30, 10, 10),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: screenWidth,
                                  height: screenHeight / 12,
                                  child: Text(
                                    cards[index].txt,
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(
                                            0x4E, 0x45, 0x08, 1.0)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,)
                            ],
                          ),

                        );
                      }),
                )
            ),
          ],
        ),
      ),
    );
  }
}

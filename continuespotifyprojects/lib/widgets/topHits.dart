import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopHits extends StatefulWidget {
  const TopHits({super.key});

  @override
  State<TopHits> createState() => _TopHitsState();
}

class _TopHitsState extends State<TopHits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Image.asset('assets/topHitsArrow.png')),
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/topHitsHeart.png')),
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/more-vertical.png')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 390,
                  height: 370,
                  decoration: BoxDecoration(
                    
                    border: Border( 
                        bottom: BorderSide(
                      color: Colors.grey,
                    )),
                  ),
                  child: Image.asset('assets/topHitsImage.png',fit: BoxFit.cover,),
                  
                ),
                Container(
                    margin: EdgeInsets.only(top: 250, left: 40),
                    child: Image.asset('assets/topHitsTodayText.png')),
                Container(
                    margin: EdgeInsets.only(top: 290, left: 40),
                    child: Image.asset('assets/topHitsText.png')),
                Container(
                    margin: EdgeInsets.only(top: 340, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: Image.asset(
                                      'assets/topHitHeartIcon.png')),
                              Container(
                                  margin: EdgeInsets.only(left: 7, top: 2),
                                  child:
                                      Image.asset('assets/topHitsLikes.png')),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 130),
                          child: Row(
                            children: [
                              Container(
                                  child:
                                      Image.asset('assets/topHitsClock.png')),
                              Container(
                                  margin: EdgeInsets.only(left: 7),
                                  child: Image.asset('assets/topHitsTime.png')),
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 335, right: 10),
                  child: Image.asset('assets/topHitsPlay.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

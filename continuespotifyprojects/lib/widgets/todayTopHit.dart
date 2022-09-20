import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TodayTopHits extends StatefulWidget {
  const TodayTopHits({super.key});

  @override
  State<TodayTopHits> createState() => _TodayTopHitsState();
}

class _TodayTopHitsState extends State<TodayTopHits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        //title: "Today's Top Hits";
      ),

    );
  }
}
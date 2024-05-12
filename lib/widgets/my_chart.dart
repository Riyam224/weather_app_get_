// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weather_api_practice/controller/home_controller.dart';
import 'package:weather_api_practice/models/five_days_data.dart';

class MyChart extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          // series: <ChartSeries<FiveDayData, String>>[
          //   SplineSeries<FiveDayData, String>(
          //     dataSource: controller.fiveDaysData,
          //     xValueMapper: (FiveDayData f, _) => f.dateTime,
          //     yValueMapper: (FiveDayData f, _) => f.temp,
          //   ),
          // ],
        ),
      ),
    );
  }
}

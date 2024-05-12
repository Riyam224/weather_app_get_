// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, prefer_is_empty, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_api_practice/controller/home_controller.dart';
import 'package:weather_api_practice/models/current_weather_data.dart';

import '../constants/images.dart';

class MyList extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => VerticalDivider(
          color: Colors.transparent,
          width: 5,
        ),
        itemCount: controller.dataList.length,
        itemBuilder: (context, index) {
          CurrentWeatherData? data;
          (controller.dataList.length > 0)
              ? data = controller.dataList[index]
              : data = null;
          return Container(
            width: 140,
            height: 150,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      (data != null) ? '${data.name}' : '',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                            fontFamily: 'flutterfonts',
                          ),
                    ),
                    Text(
                      (data != null)
                          ? '${(data.main!.temp! - 273.15).round().toString()}\u2103'
                          : '',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                            fontFamily: 'flutterfonts',
                          ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: LottieBuilder.asset(Images.cloudyAnim),
                    ),
                    Text(
                      (data != null) ? '${data.weather![0].description}' : '',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            color: Colors.black45,
                            fontFamily: 'flutterfonts',
                            fontSize: 14,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_app/pages/fileforanalyticsone.dart';
import 'package:flutter_app/pages/analytics.dart';

class SubscriberChart extends StatelessWidget {
  final List<SubscriberSeries> data;

  SubscriberChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubscriberSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (SubscriberSeries series, _) => series.year,
          measureFn: (SubscriberSeries series, _) => series.subScribers,
          colorFn: (SubscriberSeries series, _) => series.barColor
      )
    ];

    return Container(
      height: 200,
      padding: EdgeInsets.only(left:5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Column(
            children: <Widget>[
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}
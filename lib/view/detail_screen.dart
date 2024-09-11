import 'package:covid_tracker_app/view/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String name;
  String image;
  int totalCases,
      totalDeaths,
      totalRecoverd,
      active,
      critical,
      todayRecovered,
      test;
  DetailScreen({
    required this.name,
    required this.image,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecoverd,
    required this.critical,
    required this.todayRecovered,
    required this.active,
    required this.test,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.name),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.067),
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        ReUseableRow(
                            Title: 'Name', Value: widget.name.toString()),
                        ReUseableRow(
                            Title: 'Cases',
                            Value: widget.totalCases.toString()),
                        ReUseableRow(
                            Title: 'Total Recovered',
                            Value: widget.totalRecoverd.toString()),
                        ReUseableRow(
                            Title: 'Total Deaths',
                            Value: widget.totalDeaths.toString()),
                        ReUseableRow(
                            Title: 'Today ',
                            Value: widget.todayRecovered.toString()),
                        ReUseableRow(
                            Title: 'Active', Value: widget.active.toString()),
                        ReUseableRow(
                            Title: 'Critical',
                            Value: widget.critical.toString()),
                        ReUseableRow(
                            Title: 'Test', Value: widget.test.toString()),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(widget.image),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

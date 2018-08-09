import 'dart:async';

import 'package:flutter/material.dart';

import 'package:small_calendar/small_calendar.dart';


class SmallCalendarExample extends StatefulWidget {
  @override
  _SmallCalendarExampleState createState() => new _SmallCalendarExampleState();
}

class _SmallCalendarExampleState extends State<SmallCalendarExample> {
  String _displayedMonthText;

  bool _showWeekdayIndication = true;

  bool _showTicks = true;

  SmallCalendarPagerController _smallCalendarPagerController;

  SmallCalendarDataController _smallCalendarDataController;

  @override
  void initState() {
    super.initState();

    DateTime initialMonth = new DateTime.now();
    DateTime minimumMonth =
    new DateTime(initialMonth.year - 1, initialMonth.month);
    DateTime maximumMonth =
    new DateTime(initialMonth.year + 1, initialMonth.month);

    _smallCalendarPagerController = new SmallCalendarPagerController(
      initialMonth: initialMonth,
      minimumMonth: minimumMonth,
      maximumMonth: maximumMonth,
    );

    _smallCalendarDataController = new SmallCalendarDataController();

    _updateDisplayedMonthText();
  }

  void _updateDisplayedMonthText() {
    setState(() {
      DateTime displayedMonth = _smallCalendarPagerController.displayedMonth;

      _displayedMonthText =
      "Displayed Month: ${displayedMonth.year}.${displayedMonth.month}";
    });
  }

  Future<bool> _isTodayCallback(DateTime date) async {
    DateTime now = new DateTime.now();

    return now.year == date.year &&
        now.month == date.month &&
        now.day == date.day;
  }

  Future<bool> _isSelectedCallback(DateTime date) async {
    return date.day == 10;
  }

  Future<bool> _hasTick1Callback(DateTime date) async {
    return date.day == 1 || date.day == 4 || date.day == 5;
  }

  Future<bool> _hasTick2Callback(DateTime date) async {
    return date.day == 2 || date.day == 4 || date.day == 5;
  }

  Future<bool> _hasTick3Callback(DateTime date) async {
    await new Future.delayed(new Duration(seconds: 1));

    return date.day == 3 || date.day == 5;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Small Calendar example",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Small Calendar example"),
        ),
        // Creates an inner BuildContext so that the onDayPressed method in SmallCalendar
        // can refer to the Scaffold with Scaffold.of().
        body: new Builder(builder: (BuildContext context) {
          return new Column(
            children: <Widget>[
              new Expanded(
                  child: new Container(
                    color: Colors.grey[200],
                    child: new Center(
                      child: new Container(
                        width: 250.0,
                        height: 250.0,
                        color: Colors.white,

                        /// SmallCalendarData
                        child: new SmallCalendarData(
                          firstWeekday: DateTime.monday,
                          isTodayCallback: _isTodayCallback,
                          isSelectedCallback: _isSelectedCallback,
                          hasTick1Callback: _hasTick1Callback,
                          hasTick2Callback: _hasTick2Callback,
                          hasTick3Callback: _hasTick3Callback,
                          controller: _smallCalendarDataController,

                          /// SmallCalendarStyle
                          child: new SmallCalendarStyle(
                              showWeekdayIndication: _showWeekdayIndication,
                              weekdayIndicationStyle: new WeekdayIndicationStyle(
                                backgroundColor: Theme.of(context).primaryColor,
                              ),
                              dayStyle: new DayStyle(
                                showTicks: _showTicks,
                                tick3Color: Colors.orange,
                              ),

                              /// SmallCalendarPager
                              child: new SmallCalendarPager(
                                controller: _smallCalendarPagerController,
                                onMonthChanged: (DateTime month) {
                                  _updateDisplayedMonthText();
                                },
                                pageBuilder:
                                    (BuildContext context, DateTime month) {
                                  /// SmallCalendar
                                  return new SmallCalendar(
                                    month: month,
                                    onDayTap: (DateTime day) {
                                      print(
                                        "Pressed on: ${day.year}.${day.month}.${day.day}",
                                      );

                                      // shows SnackBar
                                      Scaffold
                                          .of(context)
                                          .showSnackBar(new SnackBar(
                                          content: new Text(
                                            "Pressed on:  ${day.year}.${day.month}.${day.day} ",
                                          )));
                                    },
                                  );
                                },
                              )),
                        ),
                      ),
                    ),
                  )),
              new Expanded(
                  child: new Container(
                      margin: new EdgeInsets.symmetric(horizontal: 16.0),
                      child: new SingleChildScrollView(
                        child: new Column(
                          children: <Widget>[
                            new Padding(padding: new EdgeInsets.only(top: 8.0)),
                            new Text(_displayedMonthText),
                            new Padding(
                              padding: new EdgeInsets.symmetric(vertical: 4.0),
                              child: new RaisedButton(
                                  child: new Text("Go To Today"),
                                  onPressed: () {
                                    _smallCalendarPagerController
                                        .jumpToMonth(new DateTime.now());
                                  }),
                            ),
                            new Divider(),
                            new CheckboxListTile(
                              value: _showWeekdayIndication,
                              title: new Text("Show weekday indication"),
                              onChanged: (newValue) {
                                setState(() {
                                  _showWeekdayIndication = newValue;
                                });
                              },
                            ),
                            new Divider(),
                            new CheckboxListTile(
                              value: _showTicks,
                              title: new Text("Show ticks"),
                              onChanged: (newValue) {
                                setState(() {
                                  _showTicks = newValue;
                                });
                              },
                            ),
                            new Divider(),
                            new Text("""For example purpuses:
                    * every first day of month has tick1
                    * every second day of month has tick2
                    * every third day of month has tick3
                    * every fourth day of month has tick1 and tick2
                    * every fifth day of month has tick1, tick2 and tick3
                    * every tenth day of month is selected"""),
                            new Padding(padding: new EdgeInsets.only(top: 8.0)),
                          ],
                        ),
                      ))),
            ],
          );
        }),
      ),
    );
  }
}
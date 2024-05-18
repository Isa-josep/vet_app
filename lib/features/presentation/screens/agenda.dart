import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class Agenda extends StatefulWidget {
  Agenda({super.key});

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  DateTime _focusedDay = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      _focusedDay = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeIn(
      duration: const Duration(milliseconds: 700),
      child: Stack(
        children: [
          Align(
            alignment: Alignment(2, -1),
            child: Image.asset(
              'assets/gato2.jpeg',
              height: MediaQuery.of(context).size.height * .3,
            ),
          ),
          Align(
            alignment: Alignment(-1, .7),
            child: Image.asset(
              'assets/gato1.jpeg',
              height: MediaQuery.of(context).size.height * .3,
            ),
          ),
          Column(children: [
            Container(
              margin: EdgeInsets.only(
                  left: size.width * .05, top: size.height * 0.15),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 1),
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                    margin: EdgeInsets.only(
                        right: size.width * .05, bottom: size.height * .05),
                    height: size.height * 0.52,
                    width: size.width * .9,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(20),

                      color: const Color.fromARGB(255, 229, 219, 243)
                          .withOpacity(.7),
                    ),
                    child: Column(
                      children: [
                        TableCalendar(
                          availableGestures: AvailableGestures.all,
                          headerStyle: const HeaderStyle(
                            formatButtonVisible: false,
                            titleCentered: true,
                          ),
                          firstDay: DateTime.now(),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: DateTime.now(),
                          selectedDayPredicate: (day) =>
                              isSameDay(day, _focusedDay),
                          onDaySelected: _onDaySelected,
                          calendarStyle: const CalendarStyle(
                            todayDecoration: BoxDecoration(
                              color: Color.fromARGB(255, 164, 129, 255),
                              shape: BoxShape.circle,
                            ),
                            selectedDecoration: BoxDecoration(
                              color: Color.fromARGB(255, 114, 60, 252),
                              shape: BoxShape.circle,
                            ),
                            selectedTextStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

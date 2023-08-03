import 'package:flutter/material.dart';
import 'Upcoming_event.dart';

class Shedule extends StatefulWidget {
  const Shedule({super.key});

  State<Shedule> createState() => _SheduleState();
}

class _SheduleState extends State<Shedule> {
  int _buttonIndex = 0;

  final _SheduleWidgets = [
    // upcomingSheldule
    EvenementAvenir(),
    // completed
    Container(),

    // cancelled
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Calendrier",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding:  EdgeInsets.all(5),
              margin:  EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color:  Color(0xFFF4F6FA),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });

                    },
                    child: Container(
                      padding:  EdgeInsets.symmetric(
                          vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0
                            ? Color(0xFF71655D6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Text(
                        "Evenement ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  // complete
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding:  EdgeInsets.symmetric(
                          vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1
                            ? Color(0xFF71655D6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Text(
                        "Complete",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  //Annuller
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding:  EdgeInsets.symmetric(
                          vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2
                            ? Color(0xFF71655D6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Text(
                        "Annuler",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            _SheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}

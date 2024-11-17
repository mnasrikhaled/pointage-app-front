import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekList = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final dayList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];
  var selected = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => setState(
                  () => selected = index,
                ),
                child: Container(
                  padding: EdgeInsets.all(7),
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: selected == index
                          ? Color.fromARGB(255, 75, 73, 73).withOpacity(0.1)
                          : null),
                  child: Column(children: [
                    Text(
                      weekList[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selected == index
                              ? Colors.black
                              : Color.fromARGB(247, 81, 78, 78)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      dayList[index],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: selected == index
                              ? Colors.black
                              : Color.fromARGB(255, 114, 111, 111)),
                    )
                  ]),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 5,
              ),
          itemCount: weekList.length),
    );
  }
}

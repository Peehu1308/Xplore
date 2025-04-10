import 'package:explore/components/taskbar.dart';
import 'package:flutter/material.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F4FC),
      bottomNavigationBar: Taskbar(currentIndex: 2), // Use Taskbar here
      body: SafeArea(
        child: Column(
          children: [
            _topBar(),
            const SizedBox(height: 10),
            _calendarSection(),
            const SizedBox(height: 10),
            Expanded(child: _timelineSection()),
          ],
        ),
      ),
    );
  }

  Widget _topBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Your Timeline",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: const [
              Icon(Icons.calendar_month_outlined),
              SizedBox(width: 10),
              Icon(Icons.notifications_none),
            ],
          )
        ],
      ),
    );
  }

  Widget _calendarSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Add more event",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                Icon(Icons.add, color: Colors.blue),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.arrow_back_ios, size: 16),
              _DateChip(day: "2", weekday: "THU", isSelected: false),
              _DateChip(day: "3", weekday: "FRI", isSelected: false),
              _DateChip(day: "4", weekday: "SAT", isSelected: false),
              _DateChip(day: "5", weekday: "SUN", isSelected: true),
              _DateChip(day: "6", weekday: "MON", isSelected: false),
              _DateChip(day: "7", weekday: "TUE", isSelected: false),
              Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ],
      ),
    );
  }

  Widget _timelineSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Stack(
        children: [
          ListView(
            children: [
              _timeSlot("7:30 am"),
              _timeSlot("9:00 am"),
              _timeSlot("10:00 am"),
              _timeSlot("11:30 am", isNow: true),
              _eventTile("GDGC WORKSHOP", Colors.greenAccent),
              _timeSlot("4:00 pm"),
              _timeSlot("5:30 pm"),
              _timeSlot("7:00 pm"),
              _timeSlot("8:30 pm"),
              _eventTile("OCTAVES - INDUCTIONS", Colors.deepPurpleAccent),
            ],
          ),
        ],
      ),
    );
  }

  Widget _timeSlot(String time, {bool isNow = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(time,
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500)),
          ),
          const VerticalDivider(
            width: 20,
            thickness: 1.5,
            color: Colors.black,
          ),
          if (isNow)
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(Icons.fiber_manual_record, color: Colors.red, size: 10),
            ),
        ],
      ),
    );
  }

  Widget _eventTile(String title, Color color) {
    return Container(
      margin: const EdgeInsets.only(left: 100, top: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.9),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: 6,
            offset: const Offset(2, 4),
          )
        ],
      ),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}

class _DateChip extends StatelessWidget {
  final String day;
  final String weekday;
  final bool isSelected;

  const _DateChip(
      {required this.day, required this.weekday, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(weekday,
            style: TextStyle(
                fontSize: 12,
                color: isSelected ? Colors.purple : Colors.black)),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected ? Colors.purple : Colors.grey.shade100,
            shape: BoxShape.circle,
          ),
          child: Text(
            day,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black),
          ),
        ),
      ],
    );
  }
}
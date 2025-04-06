// File: home_screen.dart

import 'package:explore/components/taskbar.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<Map<String, dynamic>> registeredEvents = [
    {"name": "GDGC WORKSHOP", "logo": "images/gdgc_logo.png"},
    {"name": "OCTAVES INDUCTIONS", "logo": "images/octaves_logo.png"},
  ];

  List<Map<String, dynamic>> upcomingEvents = [
    {
      "name": "Bhangra Workshop",
      "time": "5.30 pm",
      "venue": "Venue : A3,Civil Building",
      "logo": "images/bhangra_logo.png",
      "hasInfo": true,
    },
    {
      "name": "NETRA Exhibition",
      "time": "Feb 23 7pm",
      "logo": "images/netra_logo.png",
      "hasInfo": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
            decoration: const BoxDecoration(
          color: Color(0xFFF8F6FF),
        ),
        child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.home_rounded, size: 24),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Welcome Home",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A1A35),
                            borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  const Text(
                                    "Join. Explore.\nConnect.\nLet's Xplore!",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    ),
                                  const SizedBox(height: 20),
                                    ElevatedButton(
                                        onPressed: () {
                                          print('Explore the clubs');
                                        },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                    ),
                                    child: const Text("Enrolled Clubs"),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 100,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.pink[200],
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 10,
                                      child: Container(
                                        width: 40,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.deepPurple[300],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text("Registered Events",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      _buildEventCard(
                          title: "GDGC WORKSHOP",
                          icon: Icons.code,
                          iconColors: [
                            Colors.blue,
                            Colors.red,
                            Colors.yellow,
                            Colors.green
                          ]),
                      _buildEventCard(
                          title: "OCTAVES INDUCTIONS",
                          icon: Icons.music_note,
                          iconColors: [Colors.black],
                          iconBackground: Colors.white),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Xplore More",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Icon(Icons.keyboard_arrow_down,
                                color: Colors.orange),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text("UPCOMING EVENTS",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      _buildUpcomingEventCard(
                        title: "Bhangra Workshop",
                        time: "5.30 pm",
                        venue: "Venue : A3,Civil Building",
                        icon: Icons.celebration,
                        iconBackground: Colors.pink,
                        iconColor: Colors.pink,
                        hasMoreInfo: true,
                      ),
                      _buildUpcomingEventCard(
                        title: "NETRA Exhibition",
                        time: "Feb 23 7pm",
                        icon: Icons.visibility,
                        iconBackground: Colors.black,
                        iconColor: Colors.white,
                        hasMoreInfo: false,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Taskbar(currentIndex: 0),
    );
  }

  Widget _buildEventCard({
    required String title,
    required IconData icon,
    List<Color> iconColors = const [Colors.blue],
    Color iconBackground = Colors.blue,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
              title.contains("GDGC")
                  ? Container(
                      width: 40,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: iconColors
                            .map((color) =>
                                Container(width: 10, height: 20, color: color))
                            .toList(),
                      ),
                    )
                  : Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: iconBackground,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(icon, color: iconColors.first),
                    ),
              const SizedBox(width: 10),
              Text(title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.orange),
        ],
      ),
    );
  }

  Widget _buildUpcomingEventCard({
    required String title,
    required String time,
    String? venue,
    required IconData icon,
    required Color iconBackground,
    required Color iconColor,
    required bool hasMoreInfo,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: iconBackground, borderRadius: BorderRadius.circular(8)),
            child: Icon(icon, color: iconColor),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                if (venue != null)
                  Text(venue,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600])),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(time,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold)),
              if (hasMoreInfo)
                Text("See More Info",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.orange[700],
                        fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}

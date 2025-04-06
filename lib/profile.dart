import 'package:explore/components/taskbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F1073),
      appBar: AppBar(
        title: const Text(
          "My Space",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Pink background container starting below the hexagons
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.62,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          // Hexagons layered on top
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Larger hexagon (background)
                  SizedBox(
                    width: 170,
                    height: 170,
                    child: ClipPolygon(
                      sides: 6,
                      borderRadius: 16.0,
                      child: Container(color: Colors.deepPurple.shade200),
                    ),
                  ),
                  // Smaller hexagon (on top)
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipPolygon(
                      sides: 6,
                      borderRadius: 6.0,
                      child: Container(
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: const Text(
                          'Explore',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text('Name')
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Taskbar(currentIndex: 0),
    );
  }
}

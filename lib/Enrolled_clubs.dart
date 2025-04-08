import 'package:explore/components/events_box.dart';
import 'package:flutter/material.dart';
class EnrolledClubs extends StatelessWidget {
  const EnrolledClubs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enrolled Clubs",style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.blue[900],),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Enrolled Clubs",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                
              ),

            ),
            
          ),
          Expanded(child: 
          Padding(padding: EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Event_box(
                      name: 'Coding Club',
                      image: 'lib/assets/code.jpeg',
                      description: 'Join us for weekly jam sessions and music theory workshops.',
                    ),
                    Event_box(
                      name: 'Music Club',
                      image: 'lib/assets/music.webp',
                      description: 'Join us for weekly jam sessions and music theory workshops.',
                    ),
                    Event_box(
                      name: 'Dance Club',
                      image: 'lib/assets/dance.png',
                      description: 'Join us for weekly jam sessions and music theory workshops.',
                    ),
                    Event_box(
                      name: 'Art Society',
                      image: 'lib/assets/culture.jpg',
                      description: 'Join us for weekly jam sessions and music theory workshops.',
                    ),
              ],
            ),
          ),))
        ],
      ),
    );
  }
}

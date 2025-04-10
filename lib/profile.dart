import 'package:explore/components/taskbar.dart';
import 'package:explore/home_screen.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5ECF0),
      appBar: AppBar(
        
        title: const Text(
          "My Space",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => const Home_Screen()));
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Picture and Name
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3D5E3),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "XYZ ABC",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              // Editable Icon
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.black),
                onPressed: () {
                  // Add edit functionality here
                },
              ),
              const SizedBox(height: 20),
              // Profile Details
              _profileDetailItem(
                icon: Icons.numbers,
                label: "Roll No",
                value: "24117034",
              ),
              _profileDetailItem(
                icon: Icons.email,
                label: "Official Email ID",
                value: "ac@nitj.ac.in",
              ),
              _profileDetailItem(
                icon: Icons.school,
                label: "Branch",
                value: "Information Technology",
              ),
              _profileDetailItem(
                icon: Icons.home,
                label: "Hostel Name",
                value: "GH2",
              ),
              _profileDetailItem(
                icon: Icons.meeting_room,
                label: "Room No",
                value: "232",
              ),
              _profileDetailItem(
                icon: Icons.code,
                label: "Skills",
                value: "PYTHON",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Taskbar(currentIndex: 3),
    );
  }

  Widget _profileDetailItem({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFFF3D5E3)),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
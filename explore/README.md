# Explore App

## Overview
The Explore App is a Flutter application designed to connect users with various clubs and events on campus. It features a user-friendly interface with multiple screens for navigation, allowing users to log in, sign up, view their profile, and explore clubs and events.

## Features
- **User Authentication**: Users can log in or sign up to access the app.
- **Profile Management**: Users can view and manage their profiles.
- **Event and Club Listings**: Users can explore various clubs and events available on campus.
- **Timeline View**: A dedicated screen to view upcoming events in a timeline format.
- **Responsive Design**: The app is designed to be responsive and user-friendly across different devices.

## File Structure
```
explore
├── lib
│   ├── components
│   │   ├── events_box.dart       # Defines the EventBox widget for displaying events
│   │   └── taskbar.dart          # Defines the Taskbar widget for bottom navigation
│   ├── screens
│   │   ├── calender.dart          # Displays the timeline of events
│   │   ├── club.dart              # Displays a list of clubs
│   │   ├── enrolled_clubs.dart    # Displays clubs the user is enrolled in
│   │   ├── home_screen.dart       # Main screen of the app
│   │   ├── login.dart             # User login interface
│   │   ├── profile.dart           # User profile display
│   │   ├── sign_up.dart           # User sign-up interface
│   │   └── welcome_back.dart       # Interface for users returning to the app
│   ├── main.dart                  # Entry point of the application
│   └── utils
│       └── constants.dart         # Constants used throughout the app
├── pubspec.yaml                   # Flutter project configuration
└── README.md                      # Documentation for the project
```

## Getting Started
To run the Explore App, follow these steps:

1. Clone the repository:
   ```
   git clone <repository-url>
   ```

2. Navigate to the project directory:
   ```
   cd explore
   ```

3. Install the dependencies:
   ```
   flutter pub get
   ```

4. Run the application:
   ```
   flutter run
   ```

## Contributing
Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
# Moodify

This project demonstrates how to create a Flutter-based mobile application that generates a personalized Spotify playlist based on the user's mood. The application allows users to log in with their Spotify account, select a mood, and receive a curated playlist that enhances the listening experience.

## Key Features:

- **Mood Assessment**: Users can select their mood using an intuitive mood selection interface.
- **Curated Playlists**: Each mood selection generates a customized playlist from Spotify.
- **User-friendly Interface**: Clean and engaging design for an enjoyable user experience.
- **Spotify Integration**: Secure login and interaction with Spotify’s API for fetching music data.

## Components Required:

- Flutter
- Dart
- Spotify API
- Render (for backend)
- flutter_web_auth (for Spotify OAuth)
- http (for making API requests)
- flutter_secure_storage (for securely storing access tokens)

## Getting Started:

### Set Up API Keys:
You need your own Spotify API keys to run this code successfully.

1. Create an application in the Spotify Developer Dashboard to get the `CLIENT_ID` and `CLIENT_SECRET`.
2. Set up your redirect URI (e.g., `yourapp://callback`).
3. Update the Spotify credentials in the `auth_api.dart` file.

### Clone the Repository:

```bash
git clone https://github.com/yourusername/moodify_app.git
cd moodify_app
```

### Install Dependencies:
Ensure you have all the necessary Flutter dependencies installed.

```bash
flutter pub get
```

### Run the Application:
Connect a device or start an emulator, then run:

```bash
flutter run
```

### Open the App:
Once the app is running, navigate through the UI to log in with Spotify, select a mood, and view the curated playlist.

## Future Enhancements:

- **Time-based Recommendations**: Integrate time of day into playlist suggestions for a more personalized experience.
- **User Profiles**: Implement user profiles to save mood history and favorite playlists.
- **More Mood Options**: Expand the mood selection to include more specific emotional states.
- **Social Sharing**: Allow users to share their playlists on social media platforms directly from the app.

## Contributing:

Contributions are welcome! Fork the repository, make your changes, and submit a pull request.

## Author:

Devansh Rai

## Contact:

idevanshrai@gmail.com

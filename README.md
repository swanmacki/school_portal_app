# School Portal — Static Two-Screen Flutter Prototype

Flutter implementation of the two **School Portal** Figma screens (**Login** and **Dashboard**) built with `StatelessWidget` classes, shared `ThemeData`, `Stack` + `Positioned`, and a local image asset.

## Project Structure

```text
school_portal_app/
├── assets/
│   └── images/
│       └── school_portal_logo.png
├── lib/
│   ├── main.dart
│   ├── theme/
│   │   └── app_theme.dart
│   └── screens/
│       ├── login_screen.dart
│       └── dashboard_screen.dart
├── pubspec.yaml
└── README.md
```

## How to Preview Both Screens Without Navigation Logic

1. Run `flutter pub get` to register `assets/images/school_portal_logo.png`.
2. Open `lib/main.dart`.
3. To preview **Screen 1 (`LoginScreen`)**:
   - Keep `initialRoute: '/login',`
   - Run `flutter run` and capture `Screen_1.png`.
4. To preview **Screen 2 (`DashboardScreen`)**:
   - Change `initialRoute: '/login',` to `initialRoute: '/dashboard',`
   - Press **`R`** (Hot Restart) in your terminal or IDE, then capture `Screen_2.png`.

<div align="center">

# 🚌 Flutter Bus Ticket Booking App

**A production-oriented Flutter prototype for bus ticket booking, demonstrating scalable UI architecture, declarative navigation with GoRouter, and reactive state management with Riverpod.**

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![Riverpod](https://img.shields.io/badge/Riverpod-2.6-00BCD4?logo=flutter&logoColor=white)](https://riverpod.dev)
[![GoRouter](https://img.shields.io/badge/GoRouter-14.x-4CAF50?logo=flutter&logoColor=white)](https://pub.dev/packages/go_router)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-lightgrey)](https://flutter.dev/multi-platform)

</div>

---

## 📋 Table of Contents

1. [Project Description](#1-project-description)
2. [Problem Statement / Objective](#2-problem-statement--objective)
3. [Features](#3-features)
4. [Tech Stack](#4-tech-stack)
5. [System Architecture / Workflow](#5-system-architecture--workflow)
6. [Installation & Setup](#6-installation--setup)
7. [Usage](#7-usage)
8. [Screenshots / Demo](#8-screenshots--demo)
9. [API Integration](#9-api-integration)
10. [Folder Structure](#10-folder-structure)
11. [Future Enhancements / Roadmap](#11-future-enhancements--roadmap)
12. [Contributing](#12-contributing)
13. [License](#13-license)
14. [Author / Contact](#14-author--contact)

---

## 1. Project Description

The **Flutter Bus Ticket Booking App** is a cross-platform mobile application prototype built with Flutter that replicates the end-to-end user journey for booking bus tickets — from searching a trip to selecting a seat. Architecturally, it leverages **Riverpod** for reactive, compile-safe state management and **GoRouter** for declarative, URL-based navigation, making it straightforward to extend towards a production system backed by live APIs.

This project serves as a reference implementation for engineering teams and students seeking to understand best-practice Flutter patterns: separation of UI from business logic, stateless/stateful widget composition, and scalable routing structures.

---

## 2. Problem Statement / Objective

Intercity bus ticketing systems are widely used but often have fragmented, inconsistent mobile experiences. The objective of this project is to:

- **Prototype** a clean, intuitive booking flow that maps to real-world ticketing scenarios (search → select trip → choose seat → confirm).
- **Demonstrate** idiomatic Flutter architecture using Riverpod and GoRouter, which are the community-recommended solutions for state and navigation in production Flutter apps.
- **Provide** a scaffolded codebase that any developer can extend with a real backend (REST, Firebase, GraphQL) without significant structural refactoring.

---

## 3. Features

| Feature | Description |
|---|---|
| **Trip Type Toggle** | Switch between One-Way and Round-Trip with immediate UI feedback |
| **Origin / Destination Input** | Free-text entry fields with a one-tap swap button |
| **Passenger Counter** | Increment/decrement control (minimum 1 passenger enforced) |
| **Date Selection** | Departure and return date display (picker integration ready) |
| **Promo Code Placeholder** | UI hook for promotional code entry |
| **Trip Detail View** | Departure/arrival summary with operator info, fare, and CTA |
| **Seat Selection Grid** | Visual seat map with Standard (red), Premium (orange), and Occupied (grey) states |
| **Bottom Navigation Shell** | Tab-based shell for Booking, Tickets, and Profile screens |
| **Declarative Routing** | URL-driven navigation via GoRouter (`/`, `/detail`, `/seat`) |
| **Reactive State** | Riverpod `StateProvider` managing tab index across the widget tree |

---

## 4. Tech Stack

| Layer | Technology | Version | Purpose |
|---|---|---|---|
| **UI Framework** | Flutter | `^3.x` | Cross-platform widget toolkit |
| **Language** | Dart | `^3.7.0` | Strongly typed, null-safe language |
| **State Management** | flutter_riverpod | `^2.6.1` | Reactive, compile-safe state management |
| **Navigation** | go_router | `^14.8.1` | Declarative, URL-based routing |
| **UI Icons** | cupertino_icons | `^1.0.8` | iOS-style icon set |
| **Linting** | flutter_lints | `^5.0.0` | Enforces Dart/Flutter best practices |
| **Testing** | flutter_test (SDK) | bundled | Widget and unit testing framework |

---

## 5. System Architecture / Workflow

### Application Layer Diagram

```
┌──────────────────────────────────────────┐
│                 main.dart                │
│  ProviderScope  ──►  BusTicketBookingApp │
└─────────────────────┬────────────────────┘
                      │
              GoRouter (bus_ticket_booking.dart)
                      │
       ┌──────────────┼──────────────┐
       ▼              ▼              ▼
      [/]          [/detail]       [/seat]
BusBookingMainPage  DetailPage   SelectPage
       │
  IndexedStack (Riverpod StateProvider)
  ┌────┴──────────┬─────────────┐
  ▼               ▼             ▼
Booking Tab    Tickets Tab   Profile Tab
(HomeScreen)   (placeholder) (placeholder)
```

### User Booking Flow

```
Launch App
    │
    ▼
Home Screen (/)
  ├── Select trip type (One-Way / Round-Trip)
  ├── Enter From / To city
  ├── Set departure date
  ├── Set number of passengers
  └── Tap "Search for Trips"
              │
              ▼
    Trip Detail Page (/detail)
      ├── View departure / arrival info
      ├── View operator & fare
      └── Tap "Book Now"
                  │
                  ▼
        Seat Selection Page (/seat)
          ├── View seat legend (Standard / Premium / Occupied)
          ├── Tap available seat to select
          └── Confirm booking
```

### State Management Pattern

Riverpod `StateProvider` is used at the `BusbookingMainPage` level to manage the active bottom navigation tab index:

```dart
final busTicketAppMenuIndex = StateProvider<int>((ref) => 0);
// Consumed via Consumer widget → ref.watch / ref.read
```

This pattern cleanly separates UI state from widget lifecycle, enabling the `IndexedStack` to preserve screen state across tab switches.

---

## 6. Installation & Setup

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) `>=3.7.0`
- Dart SDK `>=3.7.0` (bundled with Flutter)
- Android Studio / Xcode / VS Code with Flutter & Dart extensions
- An Android emulator, iOS simulator, or a physical device

### Clone & Run

```bash
# 1. Clone the repository
git clone https://github.com/SBK-07/flutter-bus-ticket-booking-app.git
cd flutter-bus-ticket-booking-app

# 2. Install dependencies
flutter pub get

# 3. Run the application
flutter run
```

### Code Quality

```bash
# Format code
dart format .

# Analyze for lint issues
flutter analyze

# Run tests
flutter test
```

---

## 7. Usage

1. **Launch the app** — the Home (Booking) screen is displayed by default.
2. **Choose trip type** — tap **One Way** or **Round Trip** on the segmented toggle.
3. **Enter cities** — type in the **From** and **To** fields; tap the 🔄 button to swap them.
4. **Adjust passengers** — use the `+` / `−` controls (minimum 1 enforced).
5. **Search** — tap **Search for Trips** to navigate to the Trip Detail page.
6. **Review & book** — on the Detail page, review trip info and fare, then proceed to seat selection.
7. **Select a seat** — on the Seat Selection page, tap an available seat and confirm.

---

## 8. Screenshots / Demo

> _Screenshots will be added once device-specific assets are captured. The app targets Android and iOS via a single codebase._

| Home / Search | Trip Detail | Seat Selection |
|:---:|:---:|:---:|
| _(pending)_ | _(pending)_ | _(pending)_ |

---

## 9. API Integration

**Current status:** This prototype uses **static / hardcoded data** — no live API calls are made.

The application is architected to make backend integration straightforward:

| Integration Point | Recommended Approach |
|---|---|
| Trip search results | REST endpoint → `AsyncNotifierProvider` in Riverpod |
| Real-time seat availability | WebSocket or polling → `StreamProvider` |
| User authentication | Firebase Auth / custom JWT → `Provider` with `AuthRepository` |
| Booking confirmation | REST POST → `StateNotifierProvider` managing booking state |
| Promo code validation | REST GET with code param → `FutureProvider.family` |

Replace hardcoded values in `bus_booking_home_screen.dart` and `bus_booking_detail_page.dart` with your data layer when ready.

---

## 10. Folder Structure

```
flutter-bus-ticket-booking-app/
├── lib/
│   ├── main.dart                     # Entry point — ProviderScope + app bootstrap
│   ├── bus_ticket_booking.dart       # GoRouter config (/, /detail, /seat)
│   ├── bus_main_page.dart            # Bottom nav shell + IndexedStack + Riverpod provider
│   ├── bus_booking_home_screen.dart  # Search form (trip type, cities, date, passengers)
│   ├── bus_booking_detail_page.dart  # Trip details summary + fare CTA
│   └── bus_booking_select_page.dart  # Seat grid UI (Standard / Premium / Occupied)
├── test/
│   └── widget_test.dart              # Default Flutter widget test stub
├── android/                          # Android platform project
├── ios/                              # iOS platform project
├── web/                              # Web platform project
├── linux/                            # Linux platform project
├── macos/                            # macOS platform project
├── windows/                          # Windows platform project
├── pubspec.yaml                      # Project metadata & dependency declarations
├── analysis_options.yaml             # Dart analysis / lint rules
└── README.md
```

---

## 11. Future Enhancements / Roadmap

| Priority | Enhancement | Description |
|---|---|---|
| 🔴 High | **Date Picker Integration** | Replace hardcoded dates with `showDatePicker` and proper state |
| 🔴 High | **Form Validation** | Validate empty city fields and date logic before search |
| 🔴 High | **Seat Selection State** | Track selected seats, enforce limits, compute dynamic pricing |
| 🟡 Medium | **Live Trip Data** | Connect to a REST/GraphQL API for real trip search results |
| 🟡 Medium | **Tickets Screen** | Display booked tickets with QR code or barcode generation |
| 🟡 Medium | **User Profile & Auth** | Firebase Auth or OAuth2 integration with profile management |
| 🟡 Medium | **Promo Code Logic** | Backend-validated promo code with discount reflection in fare |
| 🟢 Low | **Payment Gateway** | Integrate Stripe / Razorpay / platform pay for real transactions |
| 🟢 Low | **Push Notifications** | Booking confirmations and departure reminders via FCM |
| 🟢 Low | **Accessibility** | Semantic labels, screen reader support, contrast compliance |
| 🟢 Low | **Unit & Widget Tests** | Full test coverage for navigation flows and Riverpod providers |
| 🟢 Low | **Localization (i18n)** | Multi-language support via Flutter's `intl` package |

---

## 12. Contributing

Contributions are welcome! Please follow the standard GitHub workflow:

1. **Fork** this repository.
2. **Create** a feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Commit** your changes with a descriptive message:
   ```bash
   git commit -m "feat: add real-time seat availability via WebSocket"
   ```
4. **Push** to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```
5. **Open a Pull Request** against `main` — describe what you changed and why.

### Code Style Guidelines

- Follow the [Dart style guide](https://dart.dev/guides/language/effective-dart/style).
- Run `dart format .` and `flutter analyze` before submitting a PR.
- Keep widgets small and composable; extract reusable components into separate files.
- Prefer Riverpod providers over local `setState` for any state shared across widgets.

---

## 13. License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

```
MIT License — free to use, modify, and distribute with attribution.
```

---

## 14. Author / Contact

**SBK-07**

[![GitHub](https://img.shields.io/badge/GitHub-SBK--07-181717?logo=github&logoColor=white)](https://github.com/SBK-07)

> _Built as a Flutter architecture showcase. Contributions, issues, and feature requests are welcome via the [Issues](https://github.com/SBK-07/flutter-bus-ticket-booking-app/issues) tab._

---

<div align="center">
  <sub>Made with ❤️ using Flutter · Dart · Riverpod · GoRouter</sub>
</div>

# Bus Ticket Booking (Flutter)

A simple Flutter app demonstrating a bus ticket booking flow with **Riverpod** state management and **GoRouter** navigation. Includes trip search (one‑way/round‑trip), passenger selector, trip detail view, and interactive seat selection UI.

---

## Features
- One‑way or round‑trip toggle with origin/destination swap and passenger counter.  
- Trip details screen with fare CTA and navigation to seat selection.  
- Seat selection layout showing standard, premium, and occupied states.  
- **Riverpod** for lightweight state and **GoRouter** for declarative routing.  

---

## Tech stack
- **Flutter** and Material widgets  
- **State management:** `flutter_riverpod`  
- **Routing:** `go_router` with routes for home, detail, and seat pages  

---

## App structure
- `lib/main.dart` — App entry; bootstraps `ProviderScope` and `BusTicketBookingApp`.  
- `lib/bus_ticket_booking.dart` — Central GoRouter configuration (`/`, `/detail`, `/seat`).  
- `lib/bus_main_page.dart` — Bottom navigation + `IndexedStack` shell (Booking, Tickets, Profile).  
- `lib/bus_booking_home_screen.dart` — Search form (one‑way/round‑trip, from/to, date, passengers).  
- `lib/bus_booking_detail_page.dart` — Trip summary with price and navigation to seat selection.  
- `lib/bus_booking_select_page.dart` — Seat grid UI with taken/available states and confirm bar.  

---

## Getting started
**Prerequisites:**  
- Flutter SDK and platform toolchains (Android Studio/Xcode/VS for Windows)  

**Install dependencies:**  
```bash
flutter pub get
flutter run


Optional:

bash
Copy code
dart format .
flutter analyze
```

## Routing
- `/` → BusBookingMainPage (home shell with Booking tab)
- `/detail` → BusBookingDetailPage
- `/seat` → BusBookingSelectPage

```bash
Example navigation:

context.push("/detail");
context.push("/seat");
```

## State management
- **Riverpod** `ProviderScope` at app root  
- Example: `busTicketAppMenuIndex` `StateProvider` controls `BottomNavigationBar` selection  

---

## Notes
- Replace hardcoded dates, prices, and labels with real data sources as needed.  
- Extract seat widgets into separate components with tap interaction and selection logic.  
- Add form validation for origin/destination and date selection.  

---

## Roadmap
- Real date pickers and validation  
- Search results backed by a data source  
- Seat selection state with multi‑seat support and price calculation  
- Ticket list and profile screen  
- Unit/widget tests for navigation and state

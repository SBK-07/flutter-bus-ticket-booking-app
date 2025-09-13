import 'package:flutter/material.dart';
import 'package:flutter_application_3/bus_booking_detail_page.dart';
import 'package:flutter_application_3/bus_booking_select_page.dart';
import 'package:flutter_application_3/bus_main_page.dart';

import 'package:go_router/go_router.dart';


class BusTicketBookingApp extends StatelessWidget {
   BusTicketBookingApp({super.key});
   final appRoute = GoRouter(
     initialLocation: "/",
     routes: [
       // Main route for Bus Booking
       GoRoute(
         path: "/",
         builder: (context, state) => BusbookingMainPage(),
       ),

       // Detail Page Route
       GoRoute(
         path: "/detail",
         builder: (context, state) => const BusBookingDetailPage(),
       ),

       // Seat Selection Page Route
       GoRoute(
         path: "/seat",
         builder: (context, state) => const BusBookingSelectPage(),
       ),
     ],
   );



  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(

            routerConfig: appRoute  ,
    );
  }
}
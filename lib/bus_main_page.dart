import 'package:flutter/material.dart';
import 'package:flutter_application_3/bus_booking_home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final busTicketAppMenuIndex = StateProvider<int>((ref) => 0);
class BusbookingMainPage extends StatefulWidget {
  const BusbookingMainPage({super.key});

  @override
  State<BusbookingMainPage> createState() => _BusbookingMainPageState();
}

class _BusbookingMainPageState extends State<BusbookingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder:(context,ref,_) {
        final index = ref.watch(busTicketAppMenuIndex);
        return Scaffold(
          body: SafeArea(
            top: true,
            child:IndexedStack(
            index: index,
            children: [
              const BusBookingHomeScreen(),
              Center(
                child: Text("$index"),
              ),
              Center(
                child: Text("$index"),
              ),
            ],
          ),
          ),
          bottomNavigationBar: BottomNavigationBar(

                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.red,
                currentIndex: index,
                onTap: (idx) =>
                ref
                    .read(busTicketAppMenuIndex.notifier)
                    .state = idx,
                items: const[
                  BottomNavigationBarItem(icon: Icon(Icons.search,),
                    label: "Booking",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.confirmation_number,),
                    label: "Tickets",
                  ),
                  BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined,),
                    label: "Profile",
                  )
                ]),

        );
      }
     );

    }
  }


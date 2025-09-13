import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BusBookingHomeScreen extends StatefulWidget {
  const BusBookingHomeScreen({super.key});

  @override
  State<BusBookingHomeScreen> createState() => _BusBookingHomeScreenState();
}

class _BusBookingHomeScreenState extends State<BusBookingHomeScreen> {
  bool tripType = false;
  int _counter = 1;
  TextEditingController _fromTec=TextEditingController();
  TextEditingController _toTec=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16,64,16,16),
      child: SingleChildScrollView (
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Book tickets for your",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Upcoming Trip",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                height: 64,
                width: MediaQuery.of(context).size.width - 160,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tripType = true;
                          });
                        },
                        child: tripType
                            ? Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: const Center(
                            child: Text(
                              "One Way",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                            : const Center(
                          child: Text(
                            "One Way",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            tripType = false;
                          });
                        },
                        child: !tripType
                            ? Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: const Center(
                            child: Text(
                              "Round Trip",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                            : const Center(
                          child: Text(
                            "Round Trip",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(

              height:140,
              child: Stack(
                children:[
                  Positioned(
                    left:0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Row(
                            children: [
                              Text(
                                "From",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _fromTec,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Row(
                            children: [
                              Text(
                                "To",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _toTec,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      right: 16,
                      bottom: 16,
                      top: 16,
                      child:GestureDetector(
                        onTap: (){
                          final tmpText= _fromTec.text;
                          _fromTec.text = _toTec.text;
                          _toTec.text = tmpText;
                          setState(() {

                          });
                        },
                        child:Center(
                          child: CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            child: Icon(
                              Icons.sync,
                            ),
                          ),
                        ),
                      ),
                  ),
                ]
              ),
            ),

            Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Date'),
                      SizedBox(height: 16),
                      const Text(
                        '01.03.2025',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Returning'),
                      SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "SetDate",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Passengers",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
                Container(
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                      color: Colors.redAccent,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _counter--;
                          if(_counter <=1) _counter = 1;
                          setState(() {

                          });
                        },
                        icon: Icon(Icons.remove,
                        color: _counter==1? Colors.grey:Colors.blue,),
                      ),
                      Text("$_counter",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _counter++;
                          });
                        },
                        icon: Icon(Icons.add,
                        color: Colors.blue,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text("Do you have promocode?",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),
            SizedBox(
              height: 48,
            ),
            GestureDetector(
              onTap: (){
                context.push("/detail");
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: EdgeInsets.symmetric(vertical: 24,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search,
                    color: Colors.white,),
                    SizedBox(
                      width: 12,
                    ),
                    Text("Search for Trips",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

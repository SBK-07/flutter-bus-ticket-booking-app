import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BusBookingDetailPage extends StatefulWidget {
  const BusBookingDetailPage({super.key});

  @override
  State<BusBookingDetailPage> createState() => _BusBookingDetailPageState();
}

class _BusBookingDetailPageState extends State<BusBookingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.redAccent,
        title: Text(
          "Testing",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 64,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(16),
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Colors.grey,
              ),

            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                        Icons.filter_list_outlined,

                    ),
                ),
                Text(
                    "Search for Trips",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 300,

                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Departure",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                      "6:30",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                  ),
                                ),
                                Text(
                                  "Dream",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Arrival",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "12.40",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Walker Station",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical:32 ),
                          child: Row(
                            children: [
                              Icon(Icons.accessible),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:Icon(Icons.work),
                              ),
                              Icon(Icons.electrical_services),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            context.push("/seat");
                          },

                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,

                            ),
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(
                              child:
                                Text.rich(TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Rs 50.00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    TextSpan(
                                      text: "per Ticket",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,

                                      )
                                    )
                                  ]
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Departure",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "6:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Dream",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Arrival",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "12.40",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Walker Station",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical:32 ),
                          child: Row(
                            children: [
                              Icon(Icons.accessible),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:Icon(Icons.work),
                              ),
                              Icon(Icons.electrical_services),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,

                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(
                            child:
                            Text.rich(TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Rs 50.00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                  TextSpan(
                                      text: "per Ticket",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,

                                      )
                                  )
                                ]
                            ),

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Departure",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "6:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Dream",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Arrival",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "12.40",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Walker Station",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical:32 ),
                          child: Row(
                            children: [
                              Icon(Icons.accessible),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:Icon(Icons.work),
                              ),
                              Icon(Icons.electrical_services),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,

                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(
                            child:
                            Text.rich(TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Rs 50.00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                  TextSpan(
                                      text: "per Ticket",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,

                                      )
                                  )
                                ]
                            ),

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Departure",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "6:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Dream",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Arrival",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "12.40",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Walker Station",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical:32 ),
                          child: Row(
                            children: [
                              Icon(Icons.accessible),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:Icon(Icons.work),
                              ),
                              Icon(Icons.electrical_services),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,

                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(
                            child:
                            Text.rich(TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Rs 50.00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                  TextSpan(
                                      text: "per Ticket",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,

                                      )
                                  )
                                ]
                            ),

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Departure",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "6:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Dream",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Arrival",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "12.40",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Walker Station",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical:32 ),
                          child: Row(
                            children: [
                              Icon(Icons.accessible),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:Icon(Icons.work),
                              ),
                              Icon(Icons.electrical_services),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,

                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(
                            child:
                            Text.rich(TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Rs 50.00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                  TextSpan(
                                      text: "per Ticket",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,

                                      )
                                  )
                                ]
                            ),

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Departure",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "6:30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Dream",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Arrival",style: TextStyle(
                                  fontSize: 16,
                                ),),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "12.40",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Walker Station",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical:32 ),
                          child: Row(
                            children: [
                              Icon(Icons.accessible),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:Icon(Icons.work),
                              ),
                              Icon(Icons.electrical_services),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,

                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Center(
                            child:
                            Text.rich(TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Rs 50.00",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                  TextSpan(
                                      text: "per Ticket",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,

                                      )
                                  )
                                ]
                            ),

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),

                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}

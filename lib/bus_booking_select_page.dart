import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class BusBookingSelectPage extends StatefulWidget {
  const BusBookingSelectPage({super.key});

  @override
  State<BusBookingSelectPage> createState() => _BusBookingSelectPageState();
}

class _BusBookingSelectPageState extends State<BusBookingSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Select Seat"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: Colors.black,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
              context.pop();
          },
          color: Colors.red,
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Text(
                  "Standard",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Text(
                    "Premium",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(4),
                  ),
                    child: Center(
                        child: Icon(
                          Icons.clear,
                        )
                    )
                ),

                Text(
                    "Taken",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),

              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(42.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                                width: 2
                              ),
                              borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.red,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.red,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.red,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "4",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.orange,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "5",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.orange,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "6",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Icon(
                                Icons.clear,
                              ),
                            ),
                          ),
                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.orange,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text(
                                "8",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 48,
                            width: 96+12,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Table",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 48,
                            width: 96+12,
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "Table",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.orange,
                                    width: 2
                                ),
                                color :Colors.orange,
                                borderRadius: BorderRadius.circular(6)
                            ),

                            child: Center(
                              child: Text(
                                "",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          _GeneralSeatComponent(
                            borderColor: Colors.orange,
                            title: "10",
                          ),
                          const Spacer(),
                          _GeneralSeatComponent(
                            borderColor: Colors.orange,
                            title: "11",
                          ),

                          Container(
                            height:48,
                            width: 48,
                            margin: EdgeInsets.only(right:16),
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Icon(
                                Icons.clear,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "13",
                          ),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "14",
                          ),
                          const Spacer(),
                          _TakenSeatComponent(),
                          _TakenSeatComponent(),

                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "17",
                          ),
                          _TakenSeatComponent(),
                          const Spacer(),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "19",
                          ),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "20",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "21",
                          ),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "22",
                          ),

                          const Spacer(),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "23",
                          ),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "24",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "25",
                          ),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "26",
                          ),

                          const Spacer(),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "27",
                          ),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "28",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "29",
                          ),
                          _TakenSeatComponent(),
                          const Spacer(),
                          _GeneralSeatComponent(
                            borderColor: Colors.red,
                            title: "31",
                          ),
                          _TakenSeatComponent(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: SizedBox(

        child: BottomAppBar(
          elevation: 54,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: Row(

              children: [
                Text("Seat: 1/1",style: TextStyle(
                  fontSize:16,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(
                  width: 24,
                ),
                Flexible(
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Center(
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}

class _TakenSeatComponent extends StatelessWidget {
  const _TakenSeatComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:48,
      width: 48,
      margin: EdgeInsets.only(right:16),
      decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(6)
      ),
      child: Center(
        child: Icon(
          Icons.clear,
        ),
      ),
    );
  }
}


class _GeneralSeatComponent extends StatelessWidget {
  final String? title;
  final Color borderColor;
  const _GeneralSeatComponent({
    Key? key,
    this.title,
    this.borderColor =Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:48,
      width: 48,
      margin: EdgeInsets.only(right:16),
      decoration: BoxDecoration(
          border: Border.all(
              color: borderColor,
              width: 2
          ),
          borderRadius: BorderRadius.circular(6)
      ),
      child: Center(
        child: Text(
          "${title}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}


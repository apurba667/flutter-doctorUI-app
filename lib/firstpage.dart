import 'package:doctorapp/secondpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var yesterday = date.day - 1;
    var yesterday2 = date.day - 2;
    var nextday = date.day + 1;
    var nextday2 = date.day + 2;
    final DateFormat formatter = DateFormat("EEEE");
    final String formatted = formatter.format(date).trim();
    String day = formatted.substring(0, 3);

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/8.png',
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Container(
                      margin: EdgeInsets.only(left: 15, top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color.fromARGB(137, 138, 65, 65),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: (() {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => Container(
                                height: 400,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(30))),
                                        height: 800,
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 26.0,
                                                          bottom: 10),
                                                  child: Text(
                                                    date.month == 1
                                                        ? "January"
                                                        : date.month == 2
                                                            ? "February"
                                                            : date.month == 3
                                                                ? "march"
                                                                : date.month ==
                                                                        4
                                                                    ? "April"
                                                                    : date.month ==
                                                                            5
                                                                        ? "May"
                                                                        : date.month ==
                                                                                6
                                                                            ? "June"
                                                                            : date.month == 7
                                                                                ? "July"
                                                                                : date.month == 8
                                                                                    ? "August"
                                                                                    : date.month == 9
                                                                                        ? "Septermber"
                                                                                        : date.month == 10
                                                                                            ? "October"
                                                                                            : date.month == 11
                                                                                                ? "November"
                                                                                                : "December",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 10.0),
                                                  child: Text(" , ${date.year}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 20)),
                                                ),
                                                Icon(Icons.arrow_drop_down)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  height: 100,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Container(
                                                            height: 30,
                                                            width: 30,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color: Colors
                                                                    .white),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          11.0,
                                                                      top: 5),
                                                              child: Text(
                                                                  "${yesterday2}"),
                                                            )),
                                                      ),
                                                      Text(day == "Thu"
                                                          ? "Tue"
                                                          : day == "Wed"
                                                              ? "Mon"
                                                              : day == "Tue"
                                                                  ? "Sun"
                                                                  : day == "Mon"
                                                                      ? "Sat"
                                                                      : day ==
                                                                              "Sun"
                                                                          ? "Fri"
                                                                          : day == "Sat"
                                                                              ? "Thu"
                                                                              : "Wed"),
                                                      Text(
                                                        "...",
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 100,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Container(
                                                            height: 30,
                                                            width: 30,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color: Colors
                                                                    .white),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          11.0,
                                                                      top: 5),
                                                              child: Text(
                                                                  "${yesterday}"),
                                                            )),
                                                      ),
                                                      Text(day == "Thu"
                                                          ? "Wed"
                                                          : day == "Wed"
                                                              ? "Tue"
                                                              : day == "Tue"
                                                                  ? "Mon"
                                                                  : day == "Mon"
                                                                      ? "Sun"
                                                                      : day ==
                                                                              "Sun"
                                                                          ? "Sat"
                                                                          : day == "Sat"
                                                                              ? "Fri"
                                                                              : "Tus"),
                                                      Text(
                                                        "...",
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 100,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.green.shade400,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Container(
                                                            height: 30,
                                                            width: 30,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color: Colors
                                                                    .white),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          11.0,
                                                                      top: 5),
                                                              child: Text(
                                                                  "${date.day}"),
                                                            )),
                                                      ),
                                                      Text(day),
                                                      Text(
                                                        "...",
                                                        style: TextStyle(
                                                            fontSize: 25,
                                                            color:
                                                                Colors.white),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 100,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Container(
                                                            height: 30,
                                                            width: 30,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color: Colors
                                                                    .white),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 8.0,
                                                                      top: 5),
                                                              child: Text(
                                                                  "${nextday}"),
                                                            )),
                                                      ),
                                                      Text(day == "Thu"
                                                          ? "Fri"
                                                          : day == "Wed"
                                                              ? "Thu"
                                                              : day == "Tue"
                                                                  ? "Wed"
                                                                  : day == "Mon"
                                                                      ? "Tue"
                                                                      : day ==
                                                                              "Sun"
                                                                          ? "Mon"
                                                                          : day == "Sat"
                                                                              ? "Sun"
                                                                              : "Sat"),
                                                      Text(
                                                        "...",
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 100,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Container(
                                                            height: 30,
                                                            width: 30,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color: Colors
                                                                    .white),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 8.0,
                                                                      top: 5),
                                                              child: Text(
                                                                  "${nextday2}"),
                                                            )),
                                                      ),
                                                      Text(day == "Thu"
                                                          ? "Sat"
                                                          : day == "Wed"
                                                              ? "Fri"
                                                              : day == "Tue"
                                                                  ? "Thu"
                                                                  : day == "Mon"
                                                                      ? "Wed"
                                                                      : day ==
                                                                              "Sun"
                                                                          ? "Tue"
                                                                          : day == "Sat"
                                                                              ? "Mon"
                                                                              : "Sun"),
                                                      Text(
                                                        "...",
                                                        style: TextStyle(
                                                            fontSize: 25),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          ]),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(30))),
                                        child: Row(children: [
                                          Expanded(
                                              flex: 1,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20.0, left: 10),
                                                child: Column(
                                                  children: [
                                                    Text("09.00"),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 100,
                                                      width: 3,
                                                      color: Colors.green,
                                                    ),
                                                    Container(
                                                      height: 50,
                                                      width: 3,
                                                      color:
                                                          Colors.green.shade100,
                                                    )
                                                  ],
                                                ),
                                              )),
                                          Expanded(
                                              flex: 5,
                                              child: Container(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 90.0,
                                                              top: 5),
                                                      child: Container(
                                                        height: 3,
                                                        width: 40,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50)),
                                                      ),
                                                    ),
                                                    Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 18.0),
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .push(MaterialPageRoute(
                                                                      builder:
                                                                          ((context) =>
                                                                              SecondPage())));
                                                            },
                                                            child: Container(
                                                              height: 150,
                                                              width: 320,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .purple
                                                                      .shade200,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(16.0),
                                                                        child:
                                                                            Text(
                                                                          "Health check with \ndoctor Gustang",
                                                                          style: TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 20),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            right:
                                                                                14.0,
                                                                            bottom:
                                                                                12),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .check_box_rounded,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              30,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .all(
                                                                        16.0),
                                                                    child: Text(
                                                                      "09.00-10.00",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ))
                                        ]),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                          icon: Icon(
                            Icons.apps_outlined,
                            color: Colors.black,
                            size: 26,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/download.png',
                        height: 45,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 26),
                child: Text(
                  "How is your \nhealth today?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  int med = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 26,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 70),
        child: Padding(
          padding: const EdgeInsets.only(top: 310),
          child: Container(
            height: 340,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 22),
                      child: Text(
                        "Pills name",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15.0, left: 24, right: 24),
                      child: Container(
                        height: 50,
                        width: 460,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Icon(Icons.attach_file),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Pil KB code 2022",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, wordSpacing: 2),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_drop_down)),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0, left: 20),
                      child: Text(
                        'Ammount',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15.0, left: 24, right: 24),
                      child: Container(
                        height: 50,
                        width: 460,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      med = med - 1;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 28,
                                  width: 2,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Text(
                              '${med}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 28,
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      med = med + 1;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, left: 24, right: 24),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(Icons.access_time_outlined),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 34.0, right: 24),
                          child: SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    primary: Colors.green),
                                onPressed: () {},
                                child: Text("Add Pills")),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

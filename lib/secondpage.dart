import 'package:doctorapp/carosel.dart';
import 'package:doctorapp/lastpage.dart';
import 'package:doctorapp/model/udermodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade50,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 20),
                child: Text(
                  "Your drug cabinet",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              CaroselSliderLoading(),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, top: 20, bottom: 15),
                child: Text(
                  "Available Doctors",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 400,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: myList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LastPage(),
                              ));
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  color: myList[index].color,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 70,
                                child: ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: CircleAvatar(
                                      radius: 34,
                                      backgroundImage: AssetImage(
                                        "${myList[index].img}",
                                      ),
                                    ),
                                  ),
                                  title: Text(
                                    "${myList[index].des}",
                                    style: TextStyle(
                                        color: myList[index].textcolor),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text("${myList[index].name}"),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 32.0, right: 10),
                                    child: Text(
                                      "${myList[index].date}",
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                  ),
                                )),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

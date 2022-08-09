import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel {
  String? name, des, date, img;
  Color? color, textcolor;
  UserModel(
      {this.date, this.des, this.name, this.color, this.img, this.textcolor});
}

List<UserModel> myList = [
  UserModel(
      date: "Aug 09",
      name: "Dr. Marco Assensio",
      des: "Making New Potions",
      img: "assets/images/2.jpg",
      color: Color.fromARGB(255, 179, 232, 205),
      textcolor: Color.fromARGB(255, 43, 217, 174)),
  UserModel(
      date: "Aug 09",
      name: "Dr. Gustang",
      des: "Will check health today",
      img: "assets/images/5.jpg",
      textcolor: Color.fromARGB(255, 222, 41, 161),
      color: Color.fromARGB(255, 228, 186, 226)),
  UserModel(
      date: "Aug 10",
      name: "Dr. Shams Uddin",
      des: "Always Chill, No Appointment",
      img: "assets/images/3.jpg",
      textcolor: Color.fromARGB(255, 65, 59, 255),
      color: Color.fromARGB(255, 176, 181, 236)),
  UserModel(
    date: "Aug 11",
    name: "Dr. Manisha Das Joya",
    des: "Will check eyes patients today",
    img: "assets/images/1.jpg",
    textcolor: Color.fromARGB(255, 237, 215, 11),
    color: Color.fromARGB(255, 241, 240, 155),
  ),
  UserModel(
    date: "Aug 11",
    name: "Dr. Apurba Kumar Roy",
    des: "Will check operation patients",
    img: "assets/images/4.jpg",
    textcolor: Color.fromARGB(255, 222, 89, 41),
    color: Color.fromARGB(255, 234, 184, 159),
  ),
  UserModel(
      date: "Aug 11",
      name: "Dr. Donal Trump",
      des: "Will check Russian Patients",
      img: "assets/images/2.jpg",
      color: Color.fromARGB(255, 179, 232, 205),
      textcolor: Color.fromARGB(255, 43, 217, 174)),
  UserModel(
      date: "Aug 12",
      name: "Dr. Putin",
      des: "Take care of Ukrain patients",
      img: "assets/images/5.jpg",
      textcolor: Color.fromARGB(255, 222, 41, 161),
      color: Color.fromARGB(255, 228, 186, 226)),
  UserModel(
      date: "Aug 12",
      name: "Dr. Kopa Shams",
      des: "Doing Research on Covid 19",
      img: "assets/images/3.jpg",
      textcolor: Color.fromARGB(255, 65, 59, 255),
      color: Color.fromARGB(255, 176, 181, 236)),
  UserModel(
    date: "Aug 13",
    name: "Dr. Jack",
    des: "Leave for an week",
    img: "assets/images/1.jpg",
    textcolor: Color.fromARGB(255, 236, 213, 6),
    color: Color.fromARGB(255, 241, 240, 155),
  ),
  UserModel(
    date: "Aug 13",
    name: "Dr. Mushfiq ",
    des: "Making new medicine",
    img: "assets/images/4.jpg",
    textcolor: Color.fromARGB(255, 222, 89, 41),
    color: Color.fromARGB(255, 234, 184, 159),
  ),
];

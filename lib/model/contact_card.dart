import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  String name, phone, url;

  ContactCard({this.name,  this.phone, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 100.0,
      margin: EdgeInsets.symmetric(vertical: 0.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey[700],
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
          //BoxShadow
        ],
        color: Colors.white,
        // borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                  this.url,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.phone,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          this.phone,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.ellipsis_vertical_circle,
                      color: Colors.blueGrey[700] ,
                    ),
                    Icon(
                      CupertinoIcons.trash,
                      color: Colors.black,
                    ),
                  ])
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(color: Color.fromRGBO(7, 94, 84, 1)),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('WhatsApp',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500))),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(children: [
                    IconButton(
                        icon:
                            Icon(Icons.search, color: Colors.white, size: 25),
                        onPressed: () {}),
                    SizedBox(width: 10),
                    Icon(Icons.list , color:Colors.white , size:25)
                  ]),
                )
              ]),
        ),
        Expanded(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: Icon(Icons.photo_camera,
                        size: 26, color: Colors.white24),
                    onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(left:8.0 , right:8.0),
                  child: Text('CHATS',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                ),
                Text('STATUS',
                    style: TextStyle(
                        color: Colors.white24,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
                Text('CALLS',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white24,
                        fontWeight: FontWeight.w500))
              ]),
        )
      ]),
    );
  }
}

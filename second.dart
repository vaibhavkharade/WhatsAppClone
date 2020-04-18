import 'package:cards/data.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
      itemCount: image.length,
      itemBuilder: (context, index) {
        return Container(
            height: 60,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(width: 10),
              CircleAvatar(
                  radius: 28, backgroundImage: AssetImage(image[index])),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 5),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(name[index], style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500)),
                          Row(
                            children: <Widget>[
                              Text('12:0${index + 5} pm' , style:TextStyle(color:Color.fromRGBO(37 ,211 ,102 ,1),fontSize:14 , fontWeight:FontWeight.w300)),
                              SizedBox(width:10)
                            ],
                          ),
                        ]),
                    SizedBox(height: 5),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Image(
                                image: AssetImage(
                                    'images/icons8-double-tick-16.png')),
                            Text(msgs[0],
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black38))
                          ]),
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Color.fromRGBO(37, 211, 102, 1),
                                  child: Text('${index+1}' , style:TextStyle(color:Colors.white))),
                                  SizedBox(width:20)
                            ],
                          ),
                        ])
                  ],
                ),
              ),
            ]));
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(indent: 50);
      },
    ));
  }
}

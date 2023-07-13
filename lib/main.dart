import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List l = [];
  int cnt = 0,k=0;
  int r=0;
  String run = "";
  List<bool> temp = [];
  @override
  void initState() {
    l = List.filled(9, "");
    temp = List.filled(9, false);
  }
  get(int pos)
  {
    k++;
    run="game is on";
    temp[pos]=true;
    l[pos]="0";
    if(k<5)
    {
      while(true)
      {
        r=Random().nextInt(9);
        if(l[r] == "")
        {
          l[r] = "X";
          break;
        }
      }
    }
    win();
    setState(() {
    });
  }
  win() {
    if (l[0] == "0" && l[1] == "0" && l[2] == "0" ||
        l[3] == "0" && l[4] == "0" && l[5] == "0" ||
        l[6] == "0" && l[7] == "0" && l[8] == "0" ||
        l[0] == "0" && l[4] == "0" && l[8] == "0" ||
        l[2] == "0" && l[4] == "0" && l[6] == "0" ||
        l[0] == "0" && l[3] == "0" && l[6] == "0" ||
        l[1] == "0" && l[4] == "0" && l[7] == "0" ||
        l[2] == "0" && l[5] == "0" && l[8] == "0") {
      run = "0 is win";

      temp = List.filled(9, true);
      l[r] = "";

    } else if (l[0] == "X" && l[1] == "X" && l[2] == "X" ||
        l[3] == "X" && l[4] == "X" && l[5] == "X" ||
        l[6] == "X" && l[7] == "X" && l[8] == "X" ||
        l[0] == "X" && l[4] == "X" && l[8] == "X" ||
        l[2] == "X" && l[4] == "X" && l[6] == "X" ||
        l[0] == "X" && l[3] == "X" && l[6] == "X" ||
        l[1] == "X" && l[4] == "X" && l[7] == "X" ||
        l[2] == "X" && l[5] == "X" && l[8] == "X") {
      run = "X is win";
      temp = List.filled(9, true);
    }
    else if(l[0] != "" && l[1] != "" && l[2] != "" && l[3] != "" && l[4] != "" && l[5] != "" && l[6] != "" && l[7] != "" && l[8] != "")
    {
      run = "Game is Draw.";
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Toc Toe Game"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.all(3),
            child: Text(
              "${run}",
              style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: Colors.white),
            ),
            alignment: Alignment.center,
            decoration:
            BoxDecoration(color: Colors.grey, border: Border.all(width: 3)),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                        onTap: () => (temp[0] == false ? get(0) : null),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "${l[0]}",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(
                        onTap: () => (temp[1] == false ? get(1) : null),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "${l[1]}",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(
                        onTap: () => (temp[2] == false ? get(2) : null),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "${l[2]}",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                ],
              )),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                        onTap: () => (temp[3] == false ? get(3) : null),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "${l[3]}",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(
                        onTap: () => (temp[4] == false ? get(4) : null),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "${l[4]}",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(
                        onTap: () => (temp[5] == false ? get(5) : null),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "${l[5]}",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                ],
              )),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                        onTap: () => (temp[6] == false ? get(6) : null),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "${l[6]}",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(
                        onTap: () => (temp[7] == false ? get(7) : null),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "${l[7]}",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                  Expanded(
                      child: InkWell(
                        onTap: () => (temp[8] == false ? get(8) : null),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Text(
                            "${l[8]}",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
                          ),
                          alignment: Alignment.center,
                        ),
                      )),
                ],
              )),
          Expanded(
              child: InkWell(
                onTap: () {
                  run = "";
                  temp = List.filled(9, false);
                  k=0;
                  setState(() {
                    l = List.filled(9, "");
                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(3),
                  alignment: Alignment.center,
                  child: Text("RESET",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 50),
                  ),
                  decoration: BoxDecoration(color: Colors.grey),
                ),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCalculatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCalculatorAppState();
  }
}

class MyCalculatorAppState extends State<MyCalculatorApp> {
  double result = 0;
  var myInt = 0.0;
  var myNum = 0.0;
  var result1 = 0.0;
  String bolbola = '';
  int sign = 0;
  bool selected = false;
  String ttok = '';
  TextStyle calc1(){
    if(selected)
      {
        return TextStyle(fontSize: 55, color: Colors.white);
      }
    return TextStyle(fontSize: 45, color: Colors.white);
  }
  TextStyle calc2(){
    if(selected)
    {
      return TextStyle(fontSize: 20, color: Colors.white);
    }
    return TextStyle(fontSize: 30, color: Colors.white);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff171717),
      body: Container(
        color: Color(0xff171717),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 250,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '${result}',
                        style: calc1(),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          ttok,
                          style: calc2(),
                        )),
                  )
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                      style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                      onPressed: () {
                        selected = false;
                        ttok = '';
                        result = 0;
                        sign = 0;
                        bolbola = '';
                        setState(() {});
                      },
                      child: Text(
                        'AC', style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 50,
                        width: 80,
                        child: ElevatedButton(
                          style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                            onPressed: () {
                              selected = false;
                            result = myNum * (myInt/100);
                            int p = ttok.length;
                            int q = bolbola.length;
                            ttok = ttok.substring(0, p-q);
                            ttok = ttok + '${myInt/100}';
                              setState(() {});
                            },
                            child: Text('%', style: TextStyle(fontSize: 25),)),
                      ),
                      SizedBox(width: 12,),
                      SizedBox(
                        height: 50,
                        width: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                            onPressed: () {
                              selected = false;
                              myNum = result;
                              bolbola = '';
                              ttok = ttok + '/';
                              sign = 4;
                              setState(() {});
                            },
                            child: Text('/', style: TextStyle(fontSize: 25),)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '7';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '7';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum * myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum / myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('7', style: TextStyle(fontSize: 25),)),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '8';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '8';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum * myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum / myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('8', style: TextStyle(fontSize: 25),)),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '9';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '9';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum * myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum / myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('9', style: TextStyle(fontSize: 25),)),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
                        onPressed: () {
                          selected = false;
                          myNum = result;
                          bolbola = '';
                          ttok = ttok + '*';
                          sign = 3;
                          setState(() {});
                        },
                        child: Text('*', style: TextStyle(fontSize: 25),)),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '4';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '4';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum*myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum/myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('4',style: TextStyle(fontSize: 25)),),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '5';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '5';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum*myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum / myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('5', style: TextStyle(fontSize: 25),)),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '6';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '6';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum * myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum / myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('6', style: TextStyle(fontSize: 25),)),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          myNum = result;
                          bolbola = '';
                          ttok = ttok + '-';
                          sign = 2;
                          setState(() {});
                        },
                        child: Text('-', style: TextStyle(fontSize: 25),)),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '1';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '1';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum * myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum / myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('1', style: TextStyle(fontSize: 25),)),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '2';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '2';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum * myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum / myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('2', style: TextStyle(fontSize: 25),)),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '3';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '3';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum * myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum / myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('3', style: TextStyle(fontSize: 25),)),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          myNum = result;
                          bolbola = '';
                          ttok = ttok + '+';
                          sign = 1;
                          setState(() {});
                        },
                        child: Text('+', style: TextStyle(fontSize: 25),)),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '0';
                          myInt = double.parse(bolbola);
                          ttok = ttok + '0';
                          switch (sign) {
                            case 0:
                              {
                                result = myInt;
                              }
                              break;
                            case 1:
                              {
                                result = myNum + myInt;
                              }
                              break;
                            case 2:
                              {
                                result = myNum - myInt;
                              }
                              break;
                            case 3:
                              {
                                result = myNum * myInt;
                              }
                              break;
                            case 4:
                              {
                                result = myNum / myInt;
                              }
                          }
                          setState(() {});
                        },
                        child: Text('0', style: TextStyle(fontSize: 25),)),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = false;
                          bolbola = bolbola + '.';
                          ttok = ttok + '.';
                          setState(() {});
                        },
                        child: Text('.', style: TextStyle(fontSize: 25),)),
                  ),

                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          selected = true;
                          setState(() {

                          });
                        },
                        child: Text('=', style: TextStyle(fontSize: 25),)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});
  @override
  State<calculator> createState() => _calculatorState();
}
class _calculatorState extends State<calculator> {
  final scrollController = ScrollController();
  int opr=90;
  bool ceo=false;
  bool coo=false;
  bool cdv1=false;
  bool cdv2=false;
  String val1='';
  String val2='';
  String dis='0';
  String dis2='';
  String op='';
  double value1=0;
  double value2=0;
  double result=0;

  void func(){
    setState(() {
      switch(opr){
        case 0:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}0';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}0';
                dis=val2;
              }
            }
            break;
          }
        case 1:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}1';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}1';
                dis=val2;
              }
            }
            break;
          }
        case 2:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}2';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}2';
                dis=val2;
              }
            }
            break;
          }
        case 3:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}3';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}3';
                dis=val2;
              }
            }
            break;
          }
        case 4:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}4';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}4';
                dis=val2;
              }
            }
            break;
          }
        case 5:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}5';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}5';
                dis=val2;
              }
            }
            break;
          }
        case 6:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}6';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}6';
                dis=val2;
              }
            }
            break;
          }
        case 7:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}7';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}7';
                dis=val2;
              }
            }
            break;
          }
        case 8:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}8';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}8';
                dis=val2;
              }
            }
            break;
          }
        case 9:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                val1='${val1}9';
                dis=val1;
              }
              else if(op.isNotEmpty)
              {
                val2='${val2}9';
                dis=val2;
              }
            }
            break;
          }
        case 10:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(op.isEmpty)
              {
                if(cdv1==true)
                {
                  break;
                }
                else{
                  val1='$val1.';
                  dis=val1;
                  cdv1=true;
                }
              }
              else if(op.isNotEmpty)
              {
                if(cdv2==true)
                {
                  break;
                }
                else
                {
                  val2='$val2.';
                  dis=val2;
                  cdv2=true;
                }
              }
            }
            break;
          }
        case 11:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(coo==false)
              {
                op='%';
                dis2='%';
                coo=true;
              }
              else
              {
                break;
              }
            }
            break;
          }
        case 12:
          {
            if(ceo==true)
            {
              break;
            }
            else{
              if(dis==val1)
              {
                val1='';
                op='';
                coo=false;
                cdv1=false;
                dis2='';
              }
              else if(dis==val2)
              {
                cdv2=false;
                val2='';
              }
            }
            dis='0';
            break;
          }
        case 13:
          {
            val1='';
            val2='';
            op='';
            dis='0';
            dis2='';
            ceo=false;
            coo=false;
            cdv1=false;
            cdv2=false;
            break;
          }
        case 14:
          {
            if(ceo==true)
            {
              break;
            }
            else{
              if(op.isNotEmpty&&val2.isEmpty)
              {
                dis=val1;
                op='';
                coo=false;
                dis2='';
              }
              else if(op.isEmpty&&val1.isNotEmpty)
              {
                coo=false;
                val1=val1.substring(0,val1.length-1);
                dis=val1;
                if(!val1.contains('.'))
                {
                  cdv1=false;
                }
                if(val1.isEmpty)
                {
                  dis='0';
                }
              }
              else if(op.isNotEmpty&&val1.isNotEmpty)
              {
                val2=val2.substring(0,val2.length-1);
                dis=val2;
                if(!val2.contains('.'))
                {
                  cdv2=false;
                }
                if(val2.isEmpty)
                {
                  dis=val1;
                }
              }
            }
            break;
          }
        case 15:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(coo==false)
              {
                op='/';
                dis2='÷';
                coo=true;
              }
              else
              {
                break;
              }
            }
            break;
          }
        case 16:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(coo==false)
              {
                op='*';
                dis2='×';
                coo=true;
              }
              else
              {
                break;
              }
            }
            break;
          }
        case 17:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(coo==false)
              {
                op='+';
                dis2='+';
                coo=true;
              }
              else
              {
                break;
              }
            }
            break;
          }
        case 18:
          {
            if(ceo==true)
            {
              break;
            }
            else
            {
              if(coo==false)
              {
                op='-';
                dis2='-';
                coo=true;
              }
              else
              {
                break;
              }
            }
            break;
          }
        case 19:
          {
            if(op.isEmpty&&val2.isEmpty)
            {
              dis=val1;
              dis2='Ans';
            }
            else if(op.isNotEmpty&&val1.isEmpty)
            {
              dis2='Syntax Error';
              dis='';
            }
            else if(op.isNotEmpty&&val2.isEmpty)
            {
              dis2='Syntax Error';
              dis='';
            }
            else if(op.isNotEmpty&&val2.isNotEmpty&&val1.isNotEmpty)
            {
              value1 = double.parse(val1);
              value2 = double.parse(val2);
              dis2='Ans';
              if(op=='%')
              {
                result=value1%value2;
                dis=double.parse(result.toStringAsFixed(5)).toString();
              }
              if(op=='/')
              {
                result=value1/value2;
                dis=double.parse(result.toStringAsFixed(5)).toString();
              }
              if(op=='*')
              {
                result=value1*value2;
                dis=double.parse(result.toStringAsFixed(5)).toString();
              }
              if(op=='+')
              {
                result=value1+value2;
                dis=double.parse(result.toStringAsFixed(5)).toString();
              }
              if(op=='-')
              {
                result=value1-value2;
                dis=double.parse(result.toStringAsFixed(5)).toString();
              }
            }
            ceo=true;
            break;
          }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 465,
              width: 322,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54,width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow:[
                  BoxShadow(
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                      color: Colors.black87
                  )
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  stops: [0.1,0.7],
                  colors: [Colors.white24, Colors.black45],
                ),
              ),
              child: Column(
                children: [
                  Container(
                      height: 80,
                      width: 322,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 80,
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Calculator",style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),)
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Icon(Icons.calculate_outlined,size: 35),

                          )
                        ],
                      )
                  ),
                  Container(
                    height: 120,
                    width: 322,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      border: Border.all(color: Colors.black54,width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: Scrollbar(
                            controller: scrollController,
                            thickness: 5,
                            child: SingleChildScrollView(
                              controller: scrollController,
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              child: Text(dis,style: TextStyle(
                                fontSize: 72,
                                height: 1.67,
                                letterSpacing: 0,
                                wordSpacing: 0,
                                color: Colors.black87,
                              ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 322,
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(dis2,style: TextStyle(
                            fontSize: 20,
                            height: 1.25,
                            letterSpacing: 0,
                            wordSpacing: 0,
                            color: Colors.black87,
                          ),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 263,
                    width: 322,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:5, bottom: 2.5, left:5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=11;
                                      func();
                                    }, child: Text("%",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=7;
                                      func();
                                    }, child: Text("7",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=4;
                                      func();
                                    }, child: Text("4",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=1;
                                      func();
                                    }, child: Text("1",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 5, left:5, right: 2.5),
                                decoration: BoxDecoration(
                                  boxShadow:[
                                    BoxShadow(
                                        blurRadius: 1,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black87
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black38, width: 1),
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=10;
                                      func();
                                    }, child: Text(".",style: TextStyle(color: Colors.black, fontSize: 20),))),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:5, bottom: 2.5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=12;
                                      func();
                                    }, child: Text("CE",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=8;
                                      func();
                                    }, child: Text("8",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=5;
                                      func();
                                    }, child: Text("5",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=2;
                                      func();
                                    }, child: Text("2",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                  boxShadow:[
                                    BoxShadow(
                                        blurRadius: 1,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black87
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black38, width: 1),
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=0;
                                      func();
                                    }, child: Text("0",style: TextStyle(color: Colors.black, fontSize: 20),))),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:5, bottom: 2.5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=13;
                                      func();
                                    }, child: Text("C",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=9;
                                      func();
                                    }, child: Text("9",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=6;
                                      func();
                                    }, child: Text("6",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=3;
                                      func();
                                    }, child: Text("3",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 5, left:2.5, right: 2.5),
                                decoration: BoxDecoration(
                                  boxShadow:[
                                    BoxShadow(
                                        blurRadius: 1,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black87
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black38, width: 1),
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=19;
                                      func();
                                    }, child: Text("=",style: TextStyle(color: Colors.black, fontSize: 20),))),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:5, bottom: 2.5, left:2.5, right: 5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=14;
                                      func();
                                    }, child: Icon(Icons.backspace_outlined, size: 20, color: Colors.black,))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:2.5, right: 5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=15;
                                      func();
                                    }, child: Text("÷",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:2.5, right: 5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=16;
                                      func();
                                    }, child: Text("×",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 2.5, left:2.5, right: 5),
                                decoration: BoxDecoration(
                                    boxShadow:[
                                      BoxShadow(
                                          blurRadius: 1,
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black87
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black38, width: 1)
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=17;
                                      func();
                                    }, child: Text("+",style: TextStyle(color: Colors.black, fontSize: 20),))),
                            Container(
                                height: 46.6,
                                width: 73.75,
                                margin: EdgeInsets.only(top:2.5, bottom: 5, left:2.5, right: 5),
                                decoration: BoxDecoration(
                                  boxShadow:[
                                    BoxShadow(
                                        blurRadius: 1,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black87
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black38, width: 1),
                                ),
                                child: TextButton(style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  //padding: EdgeInsets.all(double.maxFinite)
                                ),
                                    onPressed: (){
                                      opr=18;
                                      func();
                                    }, child: Text("-",style: TextStyle(color: Colors.black, fontSize: 20),))),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
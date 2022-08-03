import 'package:calculator/widget/elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String exp = '';
  String result = '';
  double num1 =0;
  double num2 =0;
  String operator = '';
  void numClick(String num) {
  if(num=='AC'){
   setState((){
     exp = '';
     result = '';
   });
    num1 =0;
    num2 =0;
  }else if(num == 'C'){
    setState((){
      exp='';
    });
  }else if(num=='+'||num=='-'||num=='X'||num=='/'){
    operator =num;
    num1=double.parse(exp);
   setState((){
     exp='';
     result=num1.toString();
     result+=num;
   });
  }else if (num=='.'){
    if(exp.contains('.')){}
    else{
     setState((){
       exp+=num;
     });
    }
  }else if(num=='='){
    num2=double.parse(exp);
    result+=exp+'=';
    switch(operator){
      case'+':
        {
          exp = (num1 + num2).toString();
        }
        break;
      case'X':
        {
          exp = (num1 * num2).toString();
        }
        break;case'-':
      {
        exp = (num1 - num2).toString();
      }
      break;case'/':
      {
       num2 ==0? exp='Unvalid operation' :exp = (num1 / num2).toString();
      }
      break;
      default: break;


    }
    setState((){

    });
  }
  else{
    setState((){
      exp+=num;
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Calculator App',
          style: GoogleFonts.nunito(fontWeight: FontWeight.bold,color: Colors.blue),
        ),
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(
                exp,
                style: GoogleFonts.nunito(
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              result,
              style:
                  GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            thickness: 1.5,
            height: 0,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '1',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '2',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '3',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '+',
                    color: 0XFF94B49F,
                    onAction: numClick,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '4',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '5',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '6',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '-',
                    color: 0XFF94B49F,
                    onAction: numClick,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '7',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '8',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '9',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: 'X',
                    color: 0XFF94B49F,
                    onAction: numClick,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '.',
                    color: 0XFF94B49F,
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '0',
                    color: (0XFFFFFFFF),
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '/',
                    color: 0XFF94B49F,
                    onAction: numClick,
                  ),
                ),
                Expanded(
                  child: ElevatedButtonWidget(
                    num: '=',
                    color: 0XFF94B49F,
                    onAction: numClick,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButtonWidget(
                  num: 'AC',
                  color: 0XFF395B64,
                  onAction: numClick,
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButtonWidget(
                  num: 'C',
                  color: 0XFFA5C9CA,
                  onAction: numClick,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

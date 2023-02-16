
import 'package:flutter/material.dart';
import 'package:idbs/util/text_widget.dart';

import '../../util/app_icons.dart';

class RecentTransaction extends StatefulWidget {
 static const String id = '/RecentTransaction';
  const RecentTransaction({Key? key}) : super(key: key);

  @override
  State<RecentTransaction> createState() => _RecentTransactionState();
}

class _RecentTransactionState extends State<RecentTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3E1128),
        leading: InkWell(
          onTap:() {
            Navigator.pop(context);
          },

          child: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
            child: Image.asset(AppIcons.homeIcon),
          )
        ],
      ),
      body: Column(
        children: [
Container(
  width: double.infinity,
  decoration: BoxDecoration(
    color: Color(0xfff2f2f2),
  ),
  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
  child: TextWidget(text: 'Savings XXXXX0163',textStyle: TextStyle(
    fontSize: 18,fontWeight: FontWeight.w500
  )),
),
SizedBox(
  height: 20,
),
          Container(
            
            child: Column(
              crossAxisAlignment: McrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(text: '11 jan 2023', textStyle: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 14,
                    )),
                    Container(
                      child: TextWidget(text:
                        '-12.75',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                TextWidget(text: 'upi-301127096769~DR~Jyoti Soni', textStyle: TextStyle())
              ],
            ),
          )

        ],
      ),
    );
  }
}

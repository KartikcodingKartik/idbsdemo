import 'package:flutter/material.dart';
import 'package:idbs/util/app_icons.dart';
import 'package:idbs/util/text_widget.dart';

class PassbookScreen extends StatefulWidget {
  static const String id = '/PassbookScreen';
  const PassbookScreen({Key? key}) : super(key: key);

  @override
  State<PassbookScreen> createState() => _PassbookScreenState();
}

class _PassbookScreenState extends State<PassbookScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff3E1128),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
            child: GestureDetector(
                onTap: () {

                },
                child: Image.asset(AppIcons.homeWhite)),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
               padding: EdgeInsets.symmetric(vertical: 19,horizontal: 25),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Row(
                children: [
                  Image.asset(AppIcons.pay,width: 30,height: 30,),
                  TextWidget(text: 'Last 30 days', textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,

                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

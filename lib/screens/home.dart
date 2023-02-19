import 'package:flutter/material.dart';
import 'package:idbs/screens/recent_transactions/recent_transaction_screen.dart';
import 'package:idbs/util/app_colors.dart';
import 'package:idbs/util/app_icons.dart';
import 'package:idbs/util/text_widget.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "/HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TransactionsViewProvider? transactionsViewProvider;
  @override
  Widget build(BuildContext context) {
    transactionsViewProvider =
        Provider.of<TransactionsViewProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff3E1128),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
              child: Image.asset(AppIcons.idbsLogo),
            )
          ],
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                  width: double.maxFinite,
                  height: 140,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            AppIcons.navigationBg,
                          ),
                          fit: BoxFit.fitWidth)),
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Image.asset(AppIcons.user,height: 62,width: 62,),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(text: 'HI,JYOTI SONI', textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)),
                        TextWidget(text: 'Last Login: 17 Jan 2023 9:55 AM', textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white30))
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 32,),
              SingleChildScrollView(
                child: Column(
                  children: [
                    drawerList(AppIcons.homeIcon,'Home'),
                    SizedBox(height: 28,),
                    drawerList(AppIcons.sendMoney,'Send Money'),
                    SizedBox(height: 28,),
                    drawerList(AppIcons.manageBenficiary,'Manage Beneficiary'),
                    SizedBox(height: 28,),
                    drawerList(AppIcons.payBills,'Pay Bills'),
                    SizedBox(height: 28,),
                    drawerList(AppIcons.serviceIcon,'Services'),
                    SizedBox(height: 28,),
                    drawerList(AppIcons.profile,'My Profile'),
                    SizedBox(height: 28,),
                    drawerList(AppIcons.changeIcon,'Change MPIN'),
                    SizedBox(height: 28,),
                    drawerList(AppIcons.chargeIcon,'Charges'),
                    SizedBox(height: 28,),
                    drawerList(AppIcons.locationIcon,'Contact Us'),
                    SizedBox(height: 28,),
                    drawerList(AppIcons.faqIcon,'FAQ'),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 22,vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                       border: Border.all(color: Colors.black),
                      ),
                      child: TextWidget( text: 'Close Menu',textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              color: Color(0xff3E1128),
                              height: 100,
                              width: double.infinity,
                            ),
                            Container(
                              height: 80,
                              width: double.infinity,
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 22),
                          padding: EdgeInsets.symmetric(horizontal: 34,vertical: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0,4),
                                blurRadius: 4,
                              )
                            ],
                          ),
                          height: 150,
                          width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextWidget(text: '₹ 91.20', textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20
                                )),
                                Spacer(),

                                GestureDetector(
                                    onTap: (){
                                      transactionsViewProvider!.setIsAmountVisible = !transactionsViewProvider!.isAmountVisible ;
                                    },
                                    child: Image.asset( transactionsViewProvider!.isAmountVisible?AppIcons.eyeOpen:AppIcons.eyeClosed,width: 40,height: 27,)),

                              ],
                            ),
                            TextWidget(text: 'Savings - XXXXXX0163', textStyle: TextStyle(
                                fontSize: 16
                            )),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, RecentTransaction.id);
                              },
                              child: TextWidget(text: 'Mini Statement', textStyle: TextStyle(fontSize: 16,color: Colors.redAccent)
                              ),
                            )],
                        ),

                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          TextWidget(
                              text: 'UPI Services',
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              homeIcons(AppIcons.sendMoneyHome, 'Send Money'),
                              homeIcons(AppIcons.requestMoney,
                                  'Request Money'),

                              InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, RecentTransaction.id);
                                  },
                                  child: homeIcons(AppIcons.transactionHistory, 'Transaction History')),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              homeIcons(AppIcons.showScanQr, 'Show My Qr'),

                              homeIcons(AppIcons.approveToPay, 'All Accounts'),
                              homeIcons(AppIcons.more, 'More'),

                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          TextWidget(
                              text: 'My Services',
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              homeIcons(AppIcons.pay, 'Pay Bills'),
                              homeIcons(AppIcons.indianPostLogo,
                                  'Post Office Services'),
                              homeIcons(AppIcons.ruPay, 'Debit Card'),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              homeIcons(AppIcons.service, 'Service'),
                              SizedBox(
                                width: 16,
                              ),
                              homeIcons(AppIcons.accIcon, 'All Accounts'),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextWidget(
                              text: 'Bill Payments',
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              homeIcons(AppIcons.recharges, 'Recharges'),
                              homeIcons(AppIcons.recharges, 'Mobile Postpaid'),
                              homeIcons(AppIcons.landline, 'Landline Postpaid'),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              homeIcons(AppIcons.electricity, 'Electricity'),
                              homeIcons(AppIcons.broadbandIcons,
                                  'Broadband Postpaid'),
                              homeIcons(AppIcons.dthIcon, 'DTH'),
                            ],
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              homeIcons(AppIcons.gasIcon, 'Gas'),
                              homeIcons(AppIcons.fastTag, 'FastTag'),
                              homeIcons(AppIcons.more, 'More'),
                            ],
                          ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 30,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 11, horizontal: 26),
                  decoration: BoxDecoration(
                      color: AppColors.stackButtonColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppIcons.scanqr,
                        height: 34,
                        width: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextWidget(
                          text: 'Scan Any QR',
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget drawerList(String icon , String text){
    return Row(
      children: [
        SizedBox(width: 22,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Image.asset(icon,width: 22,height: 22,),
        ),
        TextWidget(text: text, textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        )),
      ],
    );
  }

  Widget homeIcons(String icon, String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF8F8F8),
      ),
      height: 100,
      width: 110,
      padding: EdgeInsets.symmetric(
        horizontal: 9,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 8,
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.asset(
                icon,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Expanded(
            flex: 4,
            child: TextWidget(
                text: text,
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }
}

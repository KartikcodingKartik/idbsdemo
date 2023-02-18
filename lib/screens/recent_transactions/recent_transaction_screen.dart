import 'package:flutter/material.dart';
import 'package:idbs/provider/provider.dart';
import 'package:idbs/util/text_widget.dart';
import 'package:provider/provider.dart';

import '../../util/app_icons.dart';

class RecentTransaction extends StatefulWidget {
  static const String id = '/RecentTransaction';
  const RecentTransaction({Key? key}) : super(key: key);

  @override
  State<RecentTransaction> createState() => _RecentTransactionState();
}

class _RecentTransactionState extends State<RecentTransaction> {
  TransactionsViewProvider transactionsViewProvider =
      TransactionsViewProvider();

  @override
  void initState() {
    transactionsViewProvider.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    transactionsViewProvider =
        Provider.of<TransactionsViewProvider>(context, listen: true);
    return Scaffold(
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
                  transactionsViewProvider.addEntry(
                      1, 'date', 'description', 'price', 1);
                },
                child: Image.asset(AppIcons.homeWhite)),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xfff2f2f2),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const TextWidget(
                text: 'Savings XXXXX0163',
                textStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: transactionsViewProvider.transactionIndex.length,
                itemBuilder: (BuildContext context, int index){
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextWidget(
                            text: '11 jan 2023',
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff3E1128))),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 8),
                          decoration: BoxDecoration(
                            color: const Color(0xFFfee2df),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const TextWidget(
                            text: '-12.75 ₹',
                            textStyle: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    const TextWidget(
                        text: 'UPI-301127096769~DR~Jyoti Soni',
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF8d8d8d),
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                ),
              );

            }),
          )

        ],
      ),
    );
  }
}

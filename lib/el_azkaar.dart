import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tsb/zeekem.dart';
import 'package:tsb/zekr_sabaah.dart';

import 'azkar_after_salaa.dart';
import 'doaaa.dart';

class ElAzkaar extends StatefulWidget {
  @override
  State<ElAzkaar> createState() => _ElAzkaarState();
}

class _ElAzkaarState extends State<ElAzkaar> {
  //const ElAzkaar({Key? key}) : super(key: key);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 3,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions:  [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'الأذكار',
                style: TextStyle(
                    color: Color.fromRGBO(26, 26, 64,1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0,right: 2),
              child: Lottie.asset('images/22939-namaz.json',height: 52,width: 50),
            )
          ],
          backgroundColor: Colors.white,
          bottom:  const TabBar(
            indicatorColor: Colors.brown,
            tabs: [
               Tab(
                child: Text(
                  ' أدعية دينية',
                  style: TextStyle(
                      fontSize: 13, color: Color.fromRGBO(26, 26, 64,0.7),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
               Tab(
                child: Text("أذكار الصلاة",
                    style: TextStyle(
                        fontSize: 13, color: Color.fromRGBO(26, 26, 64,0.7),
                        fontWeight: FontWeight.bold
                    ),),
              ),
               Tab(
                child: Text(
                  "أذكار المساء",
                  style: TextStyle(
                      fontSize: 13, color: Color.fromRGBO(26, 26, 64,0.7),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "أذكار الصباح",
                  style: TextStyle(
                      fontSize: 13, color: Color.fromRGBO(26, 26, 64,0.7),
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            DoAaaa(),
             ZekrAfterSall(),
            ZekrM(),

            const ZekrS(),


          ],
        ),
      ),
    );
  }
}

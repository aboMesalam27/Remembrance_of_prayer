import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';

class TimerSal extends StatelessWidget {
  Random r = Random();

  List list = [
    'إِنَّ اللَّهَ لَا يَخْفَىٰ عَلَيْهِ شَيْءٌ',
    'وَلَقَدْ نَعْلَمُ أَنَّكَ يَضِيقُ صَدْرُكَ بِمَا يَقُولُونَ * فَسَبِّحْ بِحَمْدِ رَبِّكَ وَكُنْ مِنَ السَّاجِدِينَ',
    ' فَأَرَدْتُ أَنْ أَعِيبَهَا وَكَانَ وَرَاءَهُمْ مَلِكٌ يَأْخُذُ كُلَّ سَفِينَةٍ غَصْبا',
    ' ومَا تَسقُطُ مِن وَرقَةٍ إلاّ يَعلمُهَا',
    ' وَكَانَ ذَٰلِكَ عَلَى اللَّهِ يَسِيرًا ',
    ' وأُفوضُّ أمري إلى الله ',
    'ولاتيأسوا من روح الله ',
    'قال ربك هو علي هين ',
    'قال ربك هو علي هين ',
    'قال فعلتها إذا وأنا من الضالين',
    'بل يساق إليك سوقا .. فلا تقلق وثق بربك  ',
    'ما من خير يكتب لك إلا ويعرف طريقَك ',
    'وهو معكم أينما كُنتم',
    'أولم يروا أنا نسوق الماء إلى الأرض الجرز',
    ' إِنَّمَا يُوَفَّى الصَّابِرُونَ أَجْرَهُمْ بِغَيْرِ حِسَابٍ',
    'وَنَحْنُ أَقْرَبُ إِلَيْهِ مِنْ حَبْلِ الْوَرِيدِ',
    'ونُنَزِّلُ مِنَ الْقُرْآنِ مَا هُوَ شِفَاءٌ وَرَحْمَةٌ لِّلْمُؤْمِنِينَ ِۙ',
    'وَيَعْلَمُ مَا فِي الْبَرِّ وَالْبَحْرِ ۚ وَمَا تَسْقُطُ مِنْ وَرَقَةٍ إِلَّا يَعْلَمُهَاِ',
    'لا يهم ماذا كنت وماذا فعلت المهم اليوم هل رجعت و تبت ؟',
    'إنَا لاَ نُضَيِعُ أَجْرَ مَن أَحْسَنَ عَمَلاً',
    'وَرَبَطْنَا عَلَى قُلُوبِهِم',
    'لا تبحث عن التقدير عند الناس يكفي أن الله لا يضيع عنده شيء',
    'الله يقبل توبتك و يغير حالك',
    'من آوى إلى الله، وتوكل على الله وفوض أمره إلى الله، ودعا الله ولجأ إلى الله، لا يضيعه الله بل يعتني به '
  ];
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () => show(context));

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: FutureBuilder(
              future: getApi(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.data == null) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Colors.grey,
                  ));
                } else if (snapshot.hasData) {
                  return Container(
                    height: 1000,
                    width: 2000,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Center(
                              child: Text(
                            "(وَأَقِيمُواْ الصَّلاَةَ وَآتُواْ الزَّكَاةَ وَارْكَعُواْ مَعَ الرَّاكِعِين)َ",
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          )),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      colors: [colorBlue, color2, color3])),
                              width: 500,
                              height: 60,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "${snapshot.data["times"]["Fajr"]}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 27),
                                    ),
                                    Spacer(),
                                    Text(
                                      "الفجر",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      colors: [colorBlue, color2, color3])),
                              width: 500,
                              height: 60,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "${snapshot.data["times"]["Dhuhr"]}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 27),
                                    ),
                                    Spacer(),
                                    Text(
                                      "الظهر",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      colors: [colorBlue, color2, color3])),
                              width: 500,
                              height: 60,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "${snapshot.data["times"]["Asr"]}",
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 27),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      "العصر",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      colors: [colorBlue, color2, color3])),
                              width: 500,
                              height: 60,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "${snapshot.data["times"]["Maghrib"]}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 27),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 12.0),
                                      child: Text(
                                        "المغرب",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            elevation: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                      colors: [colorBlue, color2, color3])),
                              width: 500,
                              height: 60,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "${snapshot.data["times"]["Isha"]}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Spacer(),
                                    Text(
                                      "العشاء",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 27),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return Text("");
                }
              },
            ),
          ),
          Lottie.asset(
            'images/12572-moon-stars.json',
            height: 250,
            width: 500,
          )
        ],
      ),
    );
  }
  show(BuildContext context) {
    return AwesomeDialog(

      padding: const EdgeInsets.all(7),
      autoHide: const Duration(seconds: 10),
      btnOkText: 'حسنا',
      btnOkColor: const Color.fromRGBO(54, 69, 79, 1),
      btnCancelColor: Colors.red,
      context: context,
      dialogType: DialogType.NO_HEADER,
      borderSide:
      const BorderSide(color: Color.fromRGBO(54, 69, 79, 1), width: 2),
      width: 380,
      buttonsBorderRadius: const BorderRadius.all(Radius.circular(2)),
      headerAnimationLoop: false,
       btnOkOnPress: () {},
      animType: AnimType.TOPSLIDE,
      // dialogBorderRadius: BorderRadiusGeometry.lerp(
      //   BorderRadius.circular(30),
      //   BorderRadius.circular(30),
      //   20.0,
      // ),
      title: 'رسالة لك ',
      desc: list[r.nextInt(list.length)],
      showCloseIcon: false,
    ).show();
  }
}

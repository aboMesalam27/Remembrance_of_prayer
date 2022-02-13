import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lottie/lottie.dart';
import 'package:tsb/test.dart';
import 'package:tsb/timerSal.dart';
import 'package:tsb/zekeer.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:math';
import 'asbeh.dart';
import 'el_azkaar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

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
Color colorBlue = const Color.fromRGBO(26, 26, 64, 1);
Color color2 = const Color.fromRGBO(179, 187, 193, 1);
Color color3 = const Color.fromRGBO(26, 26, 64, 1);

Future getApi() async {
  var url = Uri.parse("https://api.pray.zone/v2/times/today.json?city=Bilbeis");
  var response = await http.get(url);
  var responseBody = jsonDecode(response.body)["results"]["datetime"][0];

  print("responseBody= $responseBody");
  print("data===${responseBody["times"]["Imsak"]}");
  return responseBody;
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  List<Widget> screens = [
    ElAzkaar(),
    TimerSal(),
    Tasbeh(),
  ];
  int currentIndex = 1;
  Random r = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        selectedIndex: currentIndex,
        //showElevation: true,
        itemCornerRadius: 24,
        onItemSelected: (index) => setState(() => currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Lottie.asset('images/555.json', height: 30),
            title: const Text('الأذكار'),
            activeColor: const Color.fromRGBO(26, 26, 64, 0.7),
            textAlign: TextAlign.center,
            inactiveColor: Colors.orange,
          ),
          BottomNavyBarItem(
            icon: Lottie.asset('images/12572-moon-stars.json', height: 30),
            title: const Text(' الصلاة'),
            activeColor: const Color.fromRGBO(26, 26, 64, 0.7),
            textAlign: TextAlign.center,
            inactiveColor: Colors.black54,
          ),
          BottomNavyBarItem(
            icon: Lottie.asset('images/11.json', height: 30),
            title: const Text('سبحة'),
            activeColor: const Color.fromRGBO(26, 26, 64, 0.7),
            textAlign: TextAlign.center,
            inactiveColor: Colors.black54,
          ),
        ],
      ),
    );
  }

  Widget buildRaisdBut(text, fun) {
    return RaisedButton(
        elevation: 19,
        color: colorBlue,
        shape: const CircleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            " $text",
            style: const TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        onPressed: fun);
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
     // btnOkOnPress: () {},
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

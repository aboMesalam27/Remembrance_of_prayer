import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Tasbeh extends StatefulWidget {
  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  var formKey = GlobalKey<FormState>();

  int count = 0;
  String num = "33";
  int sum = 0;
  String tasbeh = 'سبحان الله';
  bool isScelected = true;
  var _selectedColor = 0;
  TextEditingController editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Lottie.asset('images/77.json'),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Expanded(
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: isScelected?Colors.red:Colors.white
          //         ),
          //         height: 120,
          //         child: Card(
          //           child: GestureDetector(
          //             child: Center(child: Text('سبحان الله')),
          //             onTap: (){
          //               setState(() {
          //                 isScelected=false;
          //                 count=0;
          //                 tasbeh='سبحان الله';
          //               });
          //             },
          //           ),
          //         ),
          //       ),
          //     ), Expanded(
          //       child: Container(
          //         height: 120,
          //
          //         child: Card(
          //
          //           child: GestureDetector(
          //             child: Center(child: Text('الحمد للة')),
          //             onTap: (){
          //               setState(() {
          //                 count=0;
          //                 tasbeh='الحمد للة';
          //               });
          //             },
          //           ),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //
          //       child: Container(
          //         height: 120,
          //
          //         child: Card(
          //           child: GestureDetector(
          //             child: Center(child: const Text('الله اكبر')),
          //             onTap: (){
          //               setState(() {
          //                 count=0;
          //                 tasbeh='الله اكبر';
          //               });
          //             },
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Row(
                  children: [
                    Text(
                      '   ${count == int.parse(num) - 1 ? sum++ : sum}مرة   ',
                      style: const TextStyle(letterSpacing:2,fontSize: 20,fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        Alert(
                            context: context,
                            title: "",
                            content: Column(
                              children: <Widget>[
                                TextFormField(
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      num = '33';
                                      return 'sd';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                  controller: editController,
                                  decoration: const InputDecoration(
                                    suffixIcon:Text('تحديد الهدف',style: TextStyle(
                                        color: Colors.grey
                                    ),) ,
                                    labelText: 'الرقم',
                                  ),
                                )
                              ],
                            ),
                            buttons: [
                              DialogButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate() && int.tryParse(editController.text)is int) {
                                    setState(() {
                                      num = editController.text;
                                      sum = 0;
                                      count=0;
                                    });
                                    Navigator.pop(context);
                                  }

                                },
                                child: const Text(
                                  "تم ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            ]).show();
                      },
                    ),
                    Text(num,),
                    Text('/',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45
                    ),),
                    Text('$count',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45
                    ),),
                  ],
                ),
              )),


        ],
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.only(left: 40),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              backgroundColor: const Color.fromRGBO(26, 26, 64,1),

              child: const Text('سبح',style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),),
              onPressed: () {
                setState(() {
                  if (count >= int.parse(num)) {
                    count = 0;
                  } else {
                    count++;
                  }
                });
              },
            ),
            const SizedBox(width: 10,),
            FloatingActionButton(
              backgroundColor: Colors.red.shade900,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: const Text('إعادة',style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                ),),
                onPressed: () {
                  setState(( ) {
                    count = 0;
                    sum = 0;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
/*

 */
/*
Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              child: const Text(
                'سبح'
              ),
              onPressed: (){
                setState(() {
                  if(count>=33){
                    count=0;
                  }
                  else{
                    count++;
                  }
                });
              },
            ),
            FloatingActionButton(onPressed:(){
              setState(() {
                count=0;
              });
            })
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
      ),
      body:Center(
        child: Text(
          '33 / ${count}'
        ),
      ),
    );
 */

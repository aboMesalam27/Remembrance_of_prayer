import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Zeeekr extends StatelessWidget {
  const Zeeekr({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    Color colorBlue = Color.fromRGBO(54, 69, 79, 1);

    Widget zekrName(text, name){
      return RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35)
        ),
        elevation: 8,
        color: colorBlue,
        onPressed:(){
          Navigator.pushNamed(context,"$name");
        },
        child: Center(
          child: Text(text,style: TextStyle(
            fontSize:23,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView(
        gridDelegate:const  SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent:250,
          mainAxisSpacing: 20,
          mainAxisExtent: 180,
          childAspectRatio: 10,
          crossAxisSpacing: 10
        ),
        children: [
          zekrName("اذكار الصباح","zekrS"),

          zekrName("اذكار المساء","ZekrM"),
          zekrName("ادعية دينية", "DoAaaa")


        ],
      ),
    );
  }

}

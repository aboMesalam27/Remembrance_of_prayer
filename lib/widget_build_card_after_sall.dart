import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildCard extends StatefulWidget {
  int count;
  String Label;
  String desc;
  BuildCard(this.count, this.Label, this.desc);

  @override
  State<BuildCard> createState() => _BuildCardState();
}

Color colorBlue = Color.fromRGBO(54, 69, 79, 1);

class _BuildCardState extends State<BuildCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Color.fromRGBO(26, 26, 64,1), style: BorderStyle.solid)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              widget.Label,
              style: const TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              widget.desc,
              style: TextStyle(
                  color: Colors.amber.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  backgroundColor:
                      widget.count == 0 ? Colors.red : Color.fromRGBO(26, 26, 64,1),
                  onPressed: () {
                    setState(() {
                      widget.count > 0 ? widget.count-- : null;
                      print(widget.count);
                    });
                  },
                  child: Text("${widget.count}"),
                ),
              ))
        ],
      ),
    );
  }
}

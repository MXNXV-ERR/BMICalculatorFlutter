import 'package:bmiclaculator/constants/appconst.dart';
import 'package:bmiclaculator/widgets/leftbar.dart';
import 'package:bmiclaculator/widgets/rightbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homescr extends StatefulWidget {
  const Homescr({Key? key}) : super(key: key);

  @override
  _HomescrState createState() => _HomescrState();
}

class _HomescrState extends State<Homescr> {
  final TextEditingController _height = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  double _res = 0;
  String _tres = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: acchex, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      backgroundColor: mainhex,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 120,
                  child: TextField(
                      controller: _height,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: acchex,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "height",
                          hintStyle: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w300,
                              color: Colors.white.withOpacity(.85)))),
                ),
                SizedBox(
                  width: 120,
                  child: TextField(
                      controller: _weight,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: acchex,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "weight",
                          hintStyle: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w300,
                              color: Colors.white.withOpacity(.85)))),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                double _h = double.parse(_height.text);
                double _w = double.parse(_weight.text);
                setState(() {
                  _res = _w / (_h * _h);
                  if (_res > 25) {
                    _tres = "You`re over weight";
                  } else if (_res >= 18.5 && _res <= 25) {
                    _tres = "You have normal weight";
                  } else {
                    _tres = "You`re under weight";
                  }
                });
              },
              child: const Text(
                "Calculate",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              _res.toStringAsFixed(2),
              style: const TextStyle(fontSize: 90, color: acchex),
            ),
            const SizedBox(
              height: 30,
            ),
            Visibility(
              visible: _tres.isNotEmpty,
              child: Text(
                _tres,
                style: const TextStyle(
                    fontSize: 32, fontWeight: FontWeight.w400, color: acchex),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const leftbar(
              barwidth: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            const leftbar(
              barwidth: 75,
            ),
            const SizedBox(
              height: 10,
            ),
            const leftbar(
              barwidth: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            const rightbar(
              barwidth: 70,
            ),
            const SizedBox(
              height: 10,
            ),
            const rightbar(
              barwidth: 50,
            ),
          ],
        ),
      ),
    );
  }
}

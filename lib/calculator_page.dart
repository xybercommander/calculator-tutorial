// ignore_for_file: sized_box_for_whitespace

import 'package:first_app/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: TextField(
                controller: _numberController,
                textAlign: TextAlign.right,
                enabled: false,
                style: const TextStyle(fontSize: 80, color: Colors.white),
                decoration: const InputDecoration(
                  border: InputBorder.none
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  onpressedFuntion: () {}, 
                  buttonText: "C", 
                  buttonColor: Colors.grey, 
                  textColor: Colors.black
                ),
                CalculatorButton(
                  onpressedFuntion: () {}, 
                  buttonText: "+/-", 
                  buttonColor: Colors.grey, 
                  textColor: Colors.black
                ),
                CalculatorButton(
                  onpressedFuntion: () {}, 
                  buttonText: "%", 
                  buttonColor: Colors.grey, 
                  textColor: Colors.black
                ),
                CalculatorButton(
                  onpressedFuntion: () {}, 
                  buttonText: "/", 
                  buttonColor: Colors.amber, 
                  textColor: Colors.white
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  onpressedFuntion: () {
                    _numberController.text += "7";
                  }, 
                  buttonText: "7", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {
                    _numberController.text += "8";
                  }, 
                  buttonText: "8", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {
                    _numberController.text += "9";
                  }, 
                  buttonText: "9", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {}, 
                  buttonText: "X", 
                  buttonColor: Colors.amber, 
                  textColor: Colors.white
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  onpressedFuntion: () {
                    _numberController.text += "4";
                  }, 
                  buttonText: "4", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {
                    _numberController.text += "5";
                  },  
                  buttonText: "5", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {
                    _numberController.text += "6";
                  }, 
                  buttonText: "6", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {}, 
                  buttonText: "-", 
                  buttonColor: Colors.amber, 
                  textColor: Colors.white
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  onpressedFuntion: () {
                    _numberController.text += "1";
                  }, 
                  buttonText: "1", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {
                    _numberController.text += "2";
                  }, 
                  buttonText: "2", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {
                    _numberController.text += "3";
                  }, 
                  buttonText: "3", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {}, 
                  buttonText: "+", 
                  buttonColor: Colors.amber, 
                  textColor: Colors.white
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 90,
                  width: 180,
                  child: MaterialButton(
                    onPressed: () {
                      _numberController.text += "0";
                    },
                    color: Colors.grey[800]!,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text("0", style: TextStyle(color: Colors.white, fontSize: 28),),
                        ),
                      ],
                    ),
                  ),
                ),
                CalculatorButton(
                  onpressedFuntion: () {}, 
                  buttonText: ".", 
                  buttonColor: Colors.grey[800]!, 
                  textColor: Colors.white
                ),
                CalculatorButton(
                  onpressedFuntion: () {}, 
                  buttonText: "=", 
                  buttonColor: Colors.amber, 
                  textColor: Colors.white
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
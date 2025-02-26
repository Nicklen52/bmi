import 'package:flutter/material.dart';

class Info extends StatelessWidget{
  final String bmi;
  const Info({super.key, required this.bmi});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Body Mass Index Info'),
        ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child:Column(
            children: <Widget>[
              const Text('Body mass index (BMI) is a value derived from the mass (weight) and height of a person.\n\nThe BMI is defined as the body mass divided by the square of the body height, and is expressed in units of kg/m\u00B2, resulting from mass in kilograms (kg) and height in metres (m).'),
              const SizedBox(height: 20),
              Table(
                border: TableBorder.all(color: Colors.orangeAccent),
                children: const [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                            'BMI value',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                          child: Text(
                              'Classification',
                          textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Below 18.5',
                        textAlign: TextAlign.center,))),
                      TableCell(child: Center(child: Text('Underweight',
                        textAlign: TextAlign.center,))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('18.5 - 24.9',
                        textAlign: TextAlign.center,))),
                      TableCell(child: Center(child: Text('Normal',
                        textAlign: TextAlign.center,))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('More than 25',
                        textAlign: TextAlign.center,))),
                      TableCell(child: Center(child: Text('Overweight',
                        textAlign: TextAlign.center,))),
                    ],
                  ),
                ],
              ),
              bmi==''?
                  const Text('Please enter your weight and height'):
                  Text('Your Body Mass Index (BMI) is: $bmi'),
              const Expanded(child: SizedBox()),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


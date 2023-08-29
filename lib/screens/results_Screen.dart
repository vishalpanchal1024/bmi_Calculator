import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/home_Screen_Provider.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff090D22),
      appBar: AppBar(
        backgroundColor: const Color(0xff090D22),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 33,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
            child: Text(
              'YOUR RESULTS',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 1.35,
            width: MediaQuery.of(context).size.width / 1.05,
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xff1E1F32),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Consumer<HomeScreenProvider>(
                    builder: (context, value, child) => Text(
                          value.getResult(),
                          style: const TextStyle(
                              fontSize: 22,
                              // fontWeight: FontWeight,
                              color: Colors.green),
                        )),
                const SizedBox(
                  height: 20,
                ),
                Consumer<HomeScreenProvider>(
                    builder: (context, value, child) => Text(
                          value.bmiCalculate(),
                          style: const TextStyle(
                              fontSize: 80, color: Colors.white),
                        )),
                const SizedBox(
                  height: 20,
                ),
                Consumer<HomeScreenProvider>(
                    builder: (context, value, child) => Text(
                          " ${value.getResult()} BMI Range :",
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        )),
                Consumer<HomeScreenProvider>(
                    builder: (context, value, child) => Text(
                          value.getRange(),
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white54),
                        )),
                const SizedBox(
                  height: 20,
                ),
                Consumer<HomeScreenProvider>(
                  builder: (context, value, child) => Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Text(
                      value.getInterpretation(),
                      style: const TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Consumer<HomeScreenProvider>(
                  builder: (context, value, child) => Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.92, 65)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'CALCULATE AGAIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

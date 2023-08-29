import 'package:bmi_calculater/screens/results_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/home_Screen_Provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        leading: const Icon(
          Icons.sort,
          color: Colors.white,
          size: 33,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1E1F32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fixedSize: const Size(200, 190)),
                onPressed: () {},
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        color: Colors.white,
                        size: 70,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ]),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1E1F32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fixedSize: const Size(200, 190)),
                onPressed: () {},
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        color: Colors.white,
                        size: 70,
                      ),
                      Text(
                        'FEMALE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ]),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.width / 2.3,
            width: MediaQuery.of(context).size.width / 1.05,
            decoration: BoxDecoration(
                color: const Color(0xff1E1F32),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'HEIGHT',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Consumer<HomeScreenProvider>(
                        builder: (context, value, child) => Text(
                          value.height.toInt().toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 35),
                        ),
                      ),
                      const Text(
                        '   cm',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  Consumer<HomeScreenProvider>(
                    builder: (context, value, child) => Slider(
                        value: value.height,
                        min: 100,
                        max: 200,
                        activeColor: Colors.pink,
                        onChanged: (v) {
                          value.slider(v);
                        }),
                  )
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.width / 1.8,
                  // width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: const Color(0xff1E1F32),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Consumer<HomeScreenProvider>(
                                builder: (context, value, child) => Text(
                                      value.weight.toString(),
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 35),
                                    )),
                            const Text(
                              '    kg',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Consumer<HomeScreenProvider>(
                              builder: (context, value, child) => IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: const Color(0xff090D22),
                                    shape: const CircleBorder(),
                                    fixedSize: const Size(60, 60)),
                                onPressed: () {
                                  value.weightDecrement();
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Consumer<HomeScreenProvider>(
                              builder: (context, value, child) => IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: const Color(0xff090D22),
                                    shape: const CircleBorder(),
                                    fixedSize: const Size(60, 60)),
                                onPressed: () {
                                  value.weightIncrement();
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.width / 1.8,
                  // width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      color: const Color(0xff1E1F32),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Consumer<HomeScreenProvider>(
                              builder: (context, value, child) => Text(
                                value.age.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                            ),
                            const Text(
                              '  yrs',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Consumer<HomeScreenProvider>(
                              builder: (context, value, child) => IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: const Color(0xff090D22),
                                    shape: const CircleBorder(),
                                    fixedSize: const Size(60, 60)),
                                onPressed: () {
                                  value.ageDecrement();
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Consumer<HomeScreenProvider>(
                              builder: (context, value, child) => IconButton(
                                style: IconButton.styleFrom(
                                    backgroundColor: const Color(0xff090D22),
                                    shape: const CircleBorder(),
                                    fixedSize: const Size(60, 60)),
                                onPressed: () {
                                  value.ageIncrement();
                                },
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Consumer<HomeScreenProvider>(
            builder: (context, value, child) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  fixedSize:
                      Size(MediaQuery.of(context).size.width * 0.96, 65)),
              onPressed: () {
                print(value.bmiCalculate());
                print(value.getResult());
                print(value.getInterpretation());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultsScreen()));
              },
              child: const Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

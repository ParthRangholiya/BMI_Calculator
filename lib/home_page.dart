
import 'package:flutter/material.dart';

import 'height_page.dart';

int ft = 4;
int inc = 8;
int heightsl = 100;

class MyHomePageView extends StatefulWidget {
  const MyHomePageView({super.key});

  @override
  State<MyHomePageView> createState() => _MyHomePageViewState();
}

class _MyHomePageViewState extends State<MyHomePageView> {
  bool C = false;
  int A = 18;
  int B = 50;
  String? G;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "AGE(In Year)",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "$A",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (A > 0) {
                                  A--;
                                }
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                if (A > 0) {
                                  A = A - 10;
                                }
                              });
                            },
                            child: ClipOval(
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                A++;
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                A = A + 10;
                              });
                            },
                            child: ClipOval(
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Weight(Kg.)",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "$B",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (B > 0) {
                                  B--;
                                }
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                if (B > 0) {
                                  B = B - 10;
                                }
                              });
                            },
                            child: ClipOval(
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                B++;
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                B = B + 10;
                              });
                            },
                            child: ClipOval(
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Switch(
                        value: C,
                        onChanged: (value) {
                          setState(() {
                            C = value;
                          });
                        },
                      ),
                      const Text(
                        "ft",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Height",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  C ? const HeightSliderView() : const HeightFtView()
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Gender",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "l'm",
                          style: TextStyle(fontSize: 80),
                        ),
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ListTile(
                                title: const Text("Male"),
                                leading: Radio(
                                  value: "Male",
                                  groupValue: G,
                                  onChanged: (value) {
                                    setState(() {
                                      G = value;
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: const Text("Female"),
                                leading: Radio(
                                  value: "Female",
                                  groupValue: G,
                                  onChanged: (value) {
                                    setState(() {
                                      G = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                double bmi = B * 2.205;
                double heigh = heightsl * 0.394;
                double heigh1 = (ft * 12) + inc.toDouble();
                double H = C ? heigh : heigh1;
                double resulte = (bmi / (H * H) * 703);
                String? clculaton() {
                  if (18.5 > resulte) {
                    return "Underweight";
                  } else if (24.9 > resulte) {
                    return "Underweight";
                  } else if (29.9 > resulte) {
                    return "Overweight";
                  } else if (30.0 < resulte) {
                    return "Obesity";
                  }
                  return null;
                }

                setState(() {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Resulte"),
                        content: Text(clculaton().toString()),
                      );
                    },
                  );
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ResultePageView(
                  //         bmicalculation: {
                  //           "age": A,
                  //           "weight": B,
                  //           "gender": G,
                  //           "height": C ? heigh : heigh1.toInt(),
                  //           "clclulation": clculaton(),
                  //         },
                  //       ),
                  //     ),
                  //   );
                
                });
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'home_page.dart';

class HeightSliderView extends StatefulWidget {
  const HeightSliderView({super.key});

  @override
  State<HeightSliderView> createState() => _HeightSliderViewState();
}

class _HeightSliderViewState extends State<HeightSliderView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black12,
      ),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: "$heightsl",
              style: const TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: "cm",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 144, 144, 144),
                  ),
                ),
              ],
            ),
          ),
          Slider(
            value: heightsl.toDouble(),
            min: 0,
            max: 500,
            inactiveColor: Colors.grey,
            onChanged: (double newvalue) {
              setState(() {
                heightsl = newvalue.round();
              });
            },
          ),
        ],
      ),
    );
  }
}

class HeightFtView extends StatefulWidget {
  const HeightFtView({super.key});

  @override
  State<HeightFtView> createState() => _HeightFtViewState();
}

class _HeightFtViewState extends State<HeightFtView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.black12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$ft",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (ft > 0) {
                          ft--;
                        }
                      });
                    },
                    child: ClipOval(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
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
                        ft++;
                      });
                    },
                    child: ClipOval(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
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
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.black12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$inc\"",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (inc > 0) {
                          inc--;
                        }
                      });
                    },
                    child: ClipOval(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
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
                        if (inc < 12) {
                          inc++;
                        }
                      });
                    },
                    child: ClipOval(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
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
    );
  }
}

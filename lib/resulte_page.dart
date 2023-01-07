import 'package:flutter/material.dart';

class ResultePageView extends StatelessWidget {
  const ResultePageView({super.key, required this.bmicalculation});

  final Map bmicalculation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
              ),
              child: Column(
                children: [
                  Text(
                    "Age : ${bmicalculation["age"]}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Divider(),
                  Text(
                    "Weight(Kg.) : ${bmicalculation["weight"]}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Divider(),
                  Text(
                    "Gender : ${bmicalculation["gender"]}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Divider(),
                  Text(
                    "Height : ${bmicalculation["height"]}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Divider(),
                  Text(
                    "Clculation : ${bmicalculation["clclulation"]}",
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

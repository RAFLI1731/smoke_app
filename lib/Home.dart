import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 226, 224, 224),
        body: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  width: 220,
                  child: Lottie.asset('assets/images/fire.json',
                      fit: BoxFit.cover),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text("Keadaan Ruangan : Berasap",
                style: TextStyle(fontSize: 22, color: Colors.white))
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

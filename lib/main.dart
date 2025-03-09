import 'package:flutter/material.dart';
import 'package:second/maan.dart';
import 'package:second/file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Maan(),
    );
  }
}

class Maan extends StatefulWidget {
  const Maan({super.key});

  @override
  State<Maan> createState() => _MaanState();
}

class _MaanState extends State<Maan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0736),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Stack(
            children: [
              AppBar(
                backgroundColor: Color(0xFF140D2B),
                elevation: 0,
                centerTitle: true,
                flexibleSpace: Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "FUDU",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              fontFamily: 'Adoria',
                            ),
                          ),
                          TextSpan(
                            text: "DEEYE",
                            style: TextStyle(
                              color:
                                  Color.fromRGBO(38, 232, 212, 1), // Cyan color
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              fontFamily: 'Adoria',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: Icon(Icons.power_settings_new, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => cali()));
                    });
                  },
                ),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              children: [
                custom(
                  onPress: () {},
                  icon: const Icon(Icons.computer, size: 90),
                  title: 'maan / shaqaale',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                custom(
                  onPress: () {},
                  icon: const Icon(Icons.computer, size: 90),
                  title: 'cali/farah',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                custom(
                  onPress: () {},
                  icon: const Icon(Icons.man, size: 90),
                  title: 'SHINNE/ FARAH',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                custom(
                  onPress: () {},
                  icon: const Icon(Icons.girl, size: 90),
                  title: 'Gabar/ women',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                custom(
                  onPress: () {},
                  icon: const Icon(Icons.man, size: 90),
                  title: 'SHINNE/ FARAH',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                custom(
                  onPress: () {},
                  icon: const Icon(Icons.man, size: 90),
                  title: 'SHINNE/ FARAH',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                custom(
                  onPress: () {},
                  icon: const Icon(Icons.computer, size: 90),
                  title: 'fadumo/aamino',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                custom(
                  onPress: () {},
                  icon: const Icon(Icons.man, size: 90),
                  title: 'SHINNE/ FARAH',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                custom(
                  onPress: () {},
                  icon: const Icon(Icons.man, size: 90),
                  title: 'SHINNE/ FARAH',
                  titleStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi Card",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  "https://img-19.ccm2.net/AINHgQU6hzAaA-eacqk4lYu9IhE=/1500x/smart/d8c10e7fd21a485c909a5b4c5d99e611/ccmcms-commentcamarche/20456790.jpg",
                ),
              ),
              const Text(
                "Mohand Djouad",
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: "Pacifico",
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
              Text(
                "Computer Vision Engineer".toUpperCase(),
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Open Sans Pro",
                  color: Colors.teal.shade100,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 20.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              const CardInfo(
                icon: Icons.phone,
                text: "+213 674 927 952",
              ),
              const CardInfo(
                icon: Icons.email,
                text: "djouad.mohand@gmail.com",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  const CardInfo({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
          size: 28.0,
        ),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: "Open Sans Pro",
            color: Colors.teal.shade900,
          ),
        ),
      ),
    );
  }
}

main() => runApp(const MyApp());

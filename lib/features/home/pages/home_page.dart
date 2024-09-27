import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skf_project/features/home/widgets/custom_home_page_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          _startingRow(),
          _secondRowCards(),
          _lastSection(),
        ],
      ),
    );
  }

  Widget _startingRow() {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/logo.png"),
          ],
        ),
      ),
    );
  }

  Widget _secondRowCards() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 350,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomHomePageCard(title: "Hello",),
              CustomHomePageCard(title: "hii",),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomHomePageCard(title: "l",),
              CustomHomePageCard(title: "o",),
            ],
          ),
        ],
      ),
    );
  }

  Widget _lastSection() {
    return Expanded(
      child: Container(
        margin:const EdgeInsets.only(top: 10),
        decoration:const  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}

import 'package:demo_app/screens/OP1.dart';
import 'package:demo_app/screens/OP2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Demopage extends StatefulWidget {
  const Demopage({super.key});

  @override
  State<Demopage> createState() => _DemopageState();
}

class _DemopageState extends State<Demopage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                controller: _controller,
                children: [OB1(), OB2()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

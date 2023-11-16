import 'package:flutter/material.dart';

class SelfIntroDisplayScreen extends StatelessWidget {

  String selfIntro;

  SelfIntroDisplayScreen({required this.selfIntro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Self Introduction'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(child: Text('${selfIntro}')),
          ],
        ),
      ),
    );
  }
}

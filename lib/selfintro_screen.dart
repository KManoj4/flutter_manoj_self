import 'package:flutter/material.dart';
import 'package:flutter_manoj_self/selfIntro_display_screen.dart';

class SelfIntroScreen extends StatefulWidget {
  const SelfIntroScreen({super.key});

  @override
  State<SelfIntroScreen> createState() => _SelfIntroScreenState();
}

class _SelfIntroScreenState extends State<SelfIntroScreen> {
  TextEditingController _selfIntro = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Self Introduction',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _selfIntro,
                minLines: 1,
                maxLines: 10,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SelfIntroDisplayScreen(
                            selfIntro: _selfIntro.text)));
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}

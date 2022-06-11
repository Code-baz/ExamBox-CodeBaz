import 'package:flutter/material.dart';

void main() {
  runApp(const ExamBoxCodeBaz());
}

class ExamBoxCodeBaz extends StatelessWidget {
  const ExamBoxCodeBaz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: ExamPage(),
        )),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({Key? key}) : super(key: key);

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'This is the Question...',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextButton(
              onPressed: () {
                // if user pressed true
              },
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              child: const Text(
                'True',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextButton(
              onPressed: () {
                // if user pressed true
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        // todo: add a Row here for score keeper
      ],
    );
  }
}

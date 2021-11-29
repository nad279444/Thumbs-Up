import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Demonstration());
}

class Demonstration extends StatelessWidget {
  const Demonstration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Thumbs up',
                style: GoogleFonts.pacifico(
                    color: Colors.white38,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [WithOutState(), WithState()],
            ),
          ),
        ));
  }
}

class WithOutState extends StatelessWidget {
  const WithOutState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(
        'Click Me :)',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          fontFamily: 'Yanone',
        ),
      ),
      onPressed: () {},
    );
  }
}

class WithState extends StatefulWidget {
  const WithState({Key? key}) : super(key: key);

  @override
  _WithStateState createState() => _WithStateState();
}

class _WithStateState extends State<WithState> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 25,
        onPressed: () {
          setState(() {
            toggle = !toggle;
          });
        },
        icon: Icon(
          toggle ? Icons.thumb_down_alt_sharp : Icons.thumb_up_alt_sharp,
          color: toggle ? Colors.red : Colors.blue,
        ));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String text = 'Stop';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            'WIFI Car Controller',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => onPressed('Forward'),
                        child: const Text('Forward'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () => onPressed('Left'),
                              child: const Text('Left'),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () => onPressed('Stop'),
                              child: const Text('Stop'),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () => onPressed('Right'),
                              child: const Text('Right'),
                            ),
                          ),
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () => onPressed('Backward'),
                              child: const Text('Backward'),
                            ),
                          ),
                        ]),
                  ],
                )),
            const Center(child: SizedBox(height: 40)),
            Center(
              child: Text(text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  )),
            )
          ]),
        ),
      ),
    );
  }

  void onPressed(String buttonText) {
    setState(() {
      text = buttonText;
    });
  }
}

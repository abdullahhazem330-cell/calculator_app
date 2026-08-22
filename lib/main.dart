import 'package:flutter/material.dart';
import 'zarayer.dart';
import 'logic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 10, width: 10),
                  Text(
                    'SACIO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(66, 208, 208, 208),
                      fontSize: 24,
                    ),
                  ),
                  Text('fx-991ARX'),
                ],
              ),
              SizedBox(height: 100, width: 100),
              Column(
                children: [
                  SizedBox(height: 50, width: 100),
                  Container(
                    height: 70,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 32, 13, 5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(24),
                child: Expanded(
                  child: Container(
                    height: 200, width: 5000,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 64, 108, 38),
                    ),
                    child: Column(
                      children: [
                        Text(
                          Input,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          Output,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: calcButtons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // 4 زراير في كل صف
                  ),
                  itemBuilder: (context, index) {
                    return zorar(
                      name: calcButtons[index],
                      onTap: () {
                        setState(() {
                          action(calcButtons[index]);
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

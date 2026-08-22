import 'package:flutter/material.dart';

const List<String> calcButtons = [
  'C',
  '( )',
  '%',
  '÷',
  '7',
  '8',
  '9',
  'x',
  '4',
  '5',
  '6',
  '-',
  '1',
  '2',
  '3',
  '+',
  '0',
  '.',
  'ANS',
  '=',
];

class zorar extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  const zorar({super.key, required this.name, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Text(name, style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white)),
      ),
    );
  }
}

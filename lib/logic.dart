import 'package:flutter/material.dart';

String Input = '', Output = '0';
String first = '', second = ' ', op = '';
bool sec = false;
String calculate(String input) {
  Input = '';
  Output = '0';
  first = '';
  second = ' ';
  op = '';
  bool sec = false;
  if (input.toLowerCase() == 'c') return '';
  for (int i = 0; i < input.length; i++) {
    if (!sec) {
      if (input[i] == '%' ||
          input[i] == 'x' ||
          input[i] == '-' ||
          input[i] == '+' ||
          input[i] == '÷') {
        op = input[i];
        sec = true;
        if (input[i] == '%') break;
      } else {
        first += input[i];
      }
    } else
      second += input[i];
  }
  double x = double.tryParse(first) ?? 0.0;
  double y = double.tryParse(second) ?? 0.0;
  double result = 0;
  if (op == '+')
    result = x + y;
  else if (op == '-')
    result = x - y;
  else if (op == 'x')
    result = x * y;
  else if (op == '÷')
    result = x / y;
  else if (op == '%')
    result = x / 100;
  Output = result.toString();
  return Output;
}

void action(String name) {
  if (name.toUpperCase() == 'C') {
    Output = '0';
    Input = '';
  }
  else if (name == '=') {
    calculate(Input);
  } else {
    Input += name;
  }
}

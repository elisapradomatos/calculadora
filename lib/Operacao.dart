import 'package:flutter/material.dart';

class operacao {
  static const operations = const ['%', '/', '+', '-', '*'];
  String _operation;
  bool _usedOperation = false;
  final _buffer = [0.0, 0.0];
  int _bufferIndex = 0;

  String result = '';

  operacao() {
    _clear();
  }

  void _clear() {
    result = '';
    _buffer.setAll(0, [0.0, 0.0]);
    _bufferIndex = 0;
    _operation = null;
    _usedOperation = false;
  }

  void applyCommand(String command) {
    if (command == 'AC') {
      _clear();
    } else if (command == 'DEL') {
      deleteEndDigit();
    } else if (operations.contains(command)) {
        _setOperation(command);
    } else {
      _addDigit(command);
    }
  }

  void deleteEndDigit() {
    result = result.length > 1 ? result.substring(0, result.length - 1) : '';
  }

  void _addDigit(String digit) {

    if (result.contains('.') && digit == '.' && _usedOperation == true) digit = '';
    if (result == '' && digit == '.') result = '0';

    if(digit != '=') {
      result += digit;
    } else result ='';

    _buffer[_bufferIndex] = double.tryParse(result);
    _usedOperation = false;
  }

   _setOperation(String operation) {


       result = _buffer[0].toString();
       result = result.endsWith('.0') ? result.split('.')[0] : result;
       result += operation;
       _usedOperation = true;

  }
}
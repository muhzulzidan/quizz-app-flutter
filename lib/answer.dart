import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.selectHandler});
  final VoidCallback selectHandler; 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: selectHandler,
            child: Text('answer 1')),
    );
  }
}

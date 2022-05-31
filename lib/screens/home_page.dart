import 'package:flutter/material.dart';
class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 280.0,
                  color: Colors.green,
                  height: double.infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




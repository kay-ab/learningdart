import 'package:flutter/material.dart';

class DailyNews extends StatelessWidget {
   const DailyNews({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: _buildAppbar(context),
      );
    }

    _buildAppbar(BuildContext context) {
    return AppBar(
      title: const Text(
          'Daily News',
          style: TextStyle(
            color: Colors.black
          ),
        ),
    );
  }
}

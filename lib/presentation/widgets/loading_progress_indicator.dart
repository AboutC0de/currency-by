import 'package:flutter/material.dart';

class LoadingProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: Center(
        child: Theme(
          data: Theme.of(context).copyWith(
            accentColor: Colors.white,
          ),
          child: const CircularProgressIndicator(),
        ),
      ),
    );
  }
}

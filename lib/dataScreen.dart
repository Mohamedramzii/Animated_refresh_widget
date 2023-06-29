import 'dart:async';

import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  Future<void> _handleOnRefresh() async {
    //reload takes some time...
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: LiquidPullToRefresh(
        onRefresh: _handleOnRefresh,
        
        color: Colors.white,
        backgroundColor: Colors.red,
        showChildOpacityTransition: true,
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TestLottie extends StatelessWidget {
  const TestLottie({super.key});

  void addBottomSheet(context) {
    Future<void> future = showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.92,
            // child: AddBottomSheet());
            // child: AddTabs());
            color: Colors.green,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Padding(
              padding: EdgeInsets.all(0),
              child: SizedBox.expand(
                  child: FittedBox(
                      fit: BoxFit.cover,
                      child: Lottie.asset('assets/lottie/Moon_fin.json',
                          alignment: Alignment.center,
                          // frameRate: FrameRate.max,
                          //height: double.infinity,
                          // width: double.infinity,
                          fit: BoxFit.fill)))),
          Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: TextButton(
                child: Text("open bottom sheet"),
                onPressed: () {
                  addBottomSheet(context);
                },
              ))
        ]));
  }
}

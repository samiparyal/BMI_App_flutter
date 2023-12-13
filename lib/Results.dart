import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final double height;
  final int weight;
  const Results({Key? key, required this.weight, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Results() {
      return weight / (height / 100 * height / 100);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Results"),
          automaticallyImplyLeading: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${Results().toStringAsPrecision(4)}",
                        style:
                            TextStyle(fontSize: 50, color: Colors.yellowAccent),
                      ),
                      Text(
                        "${Results() >= 18.5 && Results() <= 25 ? "Healthy : )" : "Unhealthy!"}",
                        style: TextStyle(
                            color: Results() >= 18.5 && Results() <= 25
                                ? Colors.green
                                : Colors.red,
                            fontSize: 20),
                      )
                    ]),
              ),
            ),
          ),
        ));
  }
}

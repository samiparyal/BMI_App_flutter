import 'package:bmi/Results.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        title: "My First APP",
        debugShowCheckedModeBanner: false,
        home: BMI());
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Colors.yellow,
//           title: Text(
//             "feribrand",
//             style: TextStyle(color: Colors.orange, fontStyle: FontStyle.italic),
//           )),
//       body: SafeArea(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               height: 20,
//               width: 100,
//               color: Colors.pink,
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Text("PINK WORLD"),
//               ),
//             ),
//             Container(
//               height: 20,
//               width: 100,
//               color: Colors.blue,
//               child:
//                   Align(alignment: Alignment.center, child: Text("BLUE WORLD")),
//             ),
//             Container(
//               height: 20,
//               width: 100,
//               color: Colors.green,
//               child: Align(
//                   alignment: Alignment.center, child: Text("GREEN WORLD")),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double value = 110;
  int temp = 1;
  int weight = 55;
  int age = 18;
  bool ismale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ismale
          ? Color.fromARGB(255, 111, 152, 184)
          : Color.fromARGB(220, 205, 118, 193),
      bottomNavigationBar: SizedBox(
        // decoration: BoxDecoration(color: ismale ? Colors.blue : Colors.pink),
        width: 100,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ismale ? Colors.blue : Colors.pink,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Results(
                          weight: weight,
                          height: value,
                        )));
          },
          child: Text("CALCULATE"),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 87, 5, 101),
        centerTitle: true,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: ismale ? Colors.blue : Colors.pink
                  // Colors.blueAccent, //ismale ? Colors.blueAccent : Colors.grey
                  ),
              child: Center(
                  child: Text(
                'BMI Calculating App',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
            ),
            ListTile(
              title: Center(
                child: const Text(
                  '---DEVELOPER---',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              onTap: () {
                // Update the state of the app.                // ...
              },
            ),
            ListTile(
              title: Center(
                  child: const Text(
                'SAMIP ARYAL',
                style: TextStyle(color: Colors.black),
              )),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             Results(weight: weight, height: value)));
                // // ...
              },
            ),
            ListTile(
              title: Center(
                child: const Text(
                  '---What is a BMI Calculator?---',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              onTap: () {
                // Update the state of the app.                // ...
              },
            ),
            ListTile(
              title: Center(
                child: const Text(
                  'BMI calculator = Body Mass Index calculator which calculates weight of a person in kilogram divided by the square of height in meters (or feet). A high BMI indicates high body fatness, whereas; A low BMI indicates low body fatness  ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
              onTap: () {
                // Update the state of the app.                // ...
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ismale = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.boy_rounded,
                            size: 70,
                            color: ismale ? Colors.blue : Colors.grey,
                          ),
                        ),
                        Text("Male",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color:
                                    ismale ? Colors.blueAccent : Colors.grey)),
                      ],

                      // Align(
                      // alignment: Alignment.center, child: Text("Element 1"))
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ismale = false;
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 150,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.girl,
                                size: 70,
                                color: ismale ? Colors.grey : Colors.pink),
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                // foreground: Paint()
                                //   ..style = PaintingStyle.stroke
                                //   ..strokeWidth = 6
                                //   ..color = Colors.black,
                                color:
                                    ismale ? Colors.grey : Colors.pinkAccent),
                          ),
                        ],
                      )
                      // Align(
                      //     alignment: Alignment.center, child: Text("Element 1'")),
                      ),
                ),
              ],
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 150,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ismale
                            ? Colors.blueAccent.shade100
                            : Colors.pinkAccent.shade100,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          // "${value.toStringAsPrecision(5)} cm (${(value / 30.48).toStringAsPrecision(2)} feet)",
                          "${value.toStringAsPrecision(5)} cm",
                          //  (${(value / 30.48).toStringAsPrecision(2)} feet)",
                          // ${((value - temp) * 2.54).toStringAsPrecision(1)} inch)",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "(${(value / 30.48).toStringAsPrecision(2)} feet)",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                    Slider(
                      min: 0,
                      value: value,
                      max: 289,
                      onChanged: (v) {
                        setState(() {
                          value = v;
                          temp = v.toInt();
                        });
                      },
                      activeColor: Colors.white,
                    ),
                  ],
                )
                //Align(alignment: Alignment.center, child: Text("Element 2")),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: 150,
                    // color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ismale
                                ? Colors.blueAccent.shade100
                                : Colors.pinkAccent.shade100,
                          ),
                        ),
                        Text(
                          "$weight kg",
                          style: TextStyle(fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                  print("Weight Subtracted");
                                },
                                child: Icon(
                                  Icons.remove_circle_outline,
                                  size: 40,
                                )),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                  print("Weight Added");
                                },
                                child: Icon(
                                  Icons.add_circle,
                                  size: 40,
                                )),
                          ],
                        ),
                      ],
                    )
                    //Align(
                    //     alignment: Alignment.center, child: Text("Element 3")),
                    ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: 150,
                    // color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ismale
                                ? Colors.blueAccent.shade100
                                : Colors.pinkAccent.shade100,
                          ),
                        ),
                        Text(
                          "$age y/o",
                          style: TextStyle(fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                  print("Age Decreased!");
                                },
                                child: Icon(
                                  Icons.remove_circle_outline,
                                  size: 40,
                                )),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                  print("Age Increased!");
                                },
                                child: Icon(
                                  Icons.add_circle,
                                  size: 40,
                                )),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

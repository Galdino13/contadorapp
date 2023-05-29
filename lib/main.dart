import 'dart:html';
 
import 'package:flutter/material.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
 
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
  int count = 0;
  var c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff00a3ff),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/image' + "$c" + '.png'),
              //fit:BoxFit.cover,
            )),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Some ou diminua",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 35),
                  Text(
                    "$count",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 35),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      onPressed: () {
                        setState(() {
                          count--;
                          if (count >= 10 || count < 0) {
                            c = 0;
                          } else {
                            c = count;
                          }
                        });
                      },
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: const Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            count++;
                            if (count >= 10 || count < 0) {
                              c = 0;
                            } else {
                              c = count;
                            }
                          });
                        },
                        child: Text(
                          "+",
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ))
                  ])
                ])));
  }
}
 
 
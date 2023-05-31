import 'package:flutter/material.dart';
import 'package:renderif/renderif.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // We are defining a boolean variable here.
    // You can replace this with your own condition.
    const bool applyPadding = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RenderIf Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            // Use PaddingIf just like you would use a regular Padding,
            // but with an additional 'condition' parameter.
            PaddingIf(
              condition:
                  applyPadding, // If this condition is true, PaddingIf will apply the padding.
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Hello World',
              ),
            ),
            // If 'applyPadding' is false, PaddingIf will render the child directly,
            // effectively skipping the padding.
          ],
        ),
      ),
    );
  }
}

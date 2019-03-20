import 'package:flutter/material.dart';
import 'package:flutter_slides/models/slides.dart';
import 'package:flutter_slides/slides/slide_presentation.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<FlutterSlidesModel>(
      model: loadedSlides,
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'GoogleSans',
        ),
        home: SlidePresentation(),
      ),
    );
  }
}

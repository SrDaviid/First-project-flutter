import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders & Checks'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                  min: 50,
                  max: 400,
                  activeColor: AppTheme.primary,
                  // divisions: 10,
                  value: _sliderValue,
                  onChanged: _sliderEnabled
                      ? (value) {
                          _sliderValue = value;
                          setState(() {});
                        }
                      : null),
              // Checkbox(
              //   value: _sliderEnabled,
              //   onChanged: (value) {
              //     _sliderEnabled = value ?? true;
              //     setState(() {});
              //   },
              // ),

              // Switch(
              //     value: _sliderEnabled,
              //     onChanged: (value) => setState(() {
              //           _sliderEnabled = value;
              //         })),
              CheckboxListTile(
                  activeColor: AppTheme.primary,
                  title: const Text('Enable'),
                  value: _sliderEnabled,
                  onChanged: (value) => setState(() {
                        _sliderEnabled = value ?? true;
                      })),
              SwitchListTile.adaptive(
                  activeColor: AppTheme.primary,
                  title: const Text('Enable'),
                  value: _sliderEnabled,
                  onChanged: (value) => setState(() {
                        _sliderEnabled = value;
                      })),

              const AboutListTile(),
              Image(
                image: const NetworkImage(
                    'https://assets.stickpng.com/thumbs/580b585b2edbce24c47b2704.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              )
            ],
          ),
        ));
  }
}

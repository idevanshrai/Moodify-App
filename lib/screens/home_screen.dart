import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _sliderValue = 50;
  String? _selectedOption;
  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moodify - Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView( // To avoid overflow when the keyboard appears
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Slider Section
              Text(
                'Select a value: ${_sliderValue.toInt()}',
                style: TextStyle(fontSize: 18),
              ),
              Slider(
                value: _sliderValue,
                min: 0,
                max: 100,
                divisions: 10,
                label: _sliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
              SizedBox(height: 20),

              // Dropdown Menu Section
              Text(
                'Select an option:',
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton<String>(
                value: _selectedOption,
                hint: Text('Choose an option'),
                isExpanded: true,
                items: _options.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedOption = newValue;
                  });
                },
              ),
              SizedBox(height: 20),

              // Questionnaire Section
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Question 1',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Question 2',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

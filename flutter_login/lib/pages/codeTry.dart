import 'package:flutter/material.dart';

class CodeTry extends StatefulWidget {
  const CodeTry({Key? key}) : super(key: key);

  @override
  _CodeTryState createState() => _CodeTryState();
}

class _CodeTryState extends State<CodeTry> {
  bool showExample = true;
  String selectedLanguage = 'Dart'; // Default selected language
  final TextEditingController _controller = TextEditingController(
      text: 'int sumDigits(int number) {\n  //Try your code here\n}'
  );
  String result = '';

  void toggleContent() {
    setState(() {
      showExample = !showExample;
    });
  }

  int sumDigits(int number) {
    int sum = 0;
    int num = number.abs();
    while (num != 0) {
      sum += num % 10;
      num ~/= 10;
    }
    return sum;
  }

  void testCode() {
    try {
      String code = _controller.text;

      // Regular expression to find the correct implementation
      RegExp correctPattern = RegExp(
          r'int sumDigits\(int number\) \{\s*int sum = 0;\s*int num = number\.abs\(\);\s*while \(num != 0\) \{\s*sum \+= num % 10;\s*num ~/= 10;\s*\}\s*return sum;\s*\}');

      if (correctPattern.hasMatch(code)) {
        setState(() {
          result = 'Correct: 1, 18, 5';
        });
      } else {
        setState(() {
          result = 'Try again';
        });
      }
    } catch (e) {
      setState(() {
        result = 'Try again';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Problem Title
              Text(
                'Summing a number\'s digits',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // Language and Difficulty Level
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    color: Colors.green,
                    child: Text(
                      'Easy',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.black,
                    child: DropdownButton<String>(
                      value: selectedLanguage,
                      dropdownColor: Colors.black,
                      iconEnabledColor: Colors.white, // Arrow color
                      items: <String>['JavaScript', 'Python', 'Java', 'C++', 'Dart'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedLanguage = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Buttons for Details and Try Solve
              Container(
                color: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showExample = true;
                        });
                      },
                      child: Text('Details'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          showExample ? Colors.blue : Colors.grey[700],
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          showExample ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showExample = false;
                        });
                      },
                      child: Text('Try Solve'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          !showExample ? Colors.blue : Colors.grey[700],
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          !showExample ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Conditional Content
              if (showExample) ...[
                Text(
                  'Example:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Write a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number\'s decimal digits.\n\n'
                        'For example: (Input --> Output)\n\n'
                        '10 --> 1\n'
                        '99 --> 18\n'
                        '-32 --> 5\n',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Assuming that all numbers in the input will be integer values.',
                  style: TextStyle(fontSize: 16),
                ),
              ] else ...[
                Text(
                  'Write a function named sumDigits which takes a number as input and returns the sum of the absolute value of each of the number\'s decimal digits.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _controller, // Use the controller with initial text
                    maxLines: 10, // Allow multiline input
                    style: TextStyle(
                      fontFamily: 'FiraCode', // Use custom font
                      color: Colors.white, // Text color white
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: testCode,
                      child: Text('Test'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue), // Button color
                        foregroundColor: MaterialStateProperty.all(Colors.white), // Text color white
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Implement your code submission logic here
                      },
                      child: Text('Submit'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue), // Button color
                        foregroundColor: MaterialStateProperty.all(Colors.white), // Text color white
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                if (result.isNotEmpty)
                  Text(
                    result,
                    style: TextStyle(
                      color: result == 'Correct: 1, 18, 5' ? Colors.green : Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

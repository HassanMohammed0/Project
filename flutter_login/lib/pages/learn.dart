import 'package:flutter/material.dart';
import 'package:flutter_login/pages/Score/score_bar.dart';

class Learn extends StatelessWidget {
  const Learn({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // "Choose Track" Text
            Text(
              'Choose Track',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Add spacing

            ScoreBar(),
            // Buttons (Two buttons per row)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the beginner track page
                      // You can specify the content for the beginner track later
                    },
                    child: Text('Beginner'),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the easy track page
                      // You can specify the content for the easy track later
                    },
                    child: Text('Easy'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add spacing

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the medium track page
                      // You can specify the content for the medium track later
                    },
                    child: Text('Medium'),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the hard track page
                      // You can specify the content for the hard track later
                    },
                    child: Text('Hard'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

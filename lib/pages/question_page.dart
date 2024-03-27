import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  // Variables to store user input for each question
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();
  TextEditingController _controller6 = TextEditingController();
  TextEditingController _controller7 = TextEditingController();
  TextEditingController _controller8 = TextEditingController();
  TextEditingController _controller9 = TextEditingController();
  TextEditingController _controller10 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildQuestionTextField("What subjects or topics are you most passionate about?", _controller1),
            _buildQuestionTextField("What activities or hobbies do you enjoy the most, and why?", _controller2),
            _buildQuestionTextField("What are your strengths and weaknesses?", _controller3),
            _buildQuestionTextField("What kind of work environment do you thrive in?", _controller4),
            _buildQuestionTextField("What are your long-term career goals?", _controller5),
            _buildQuestionTextField("Have you had any previous work experiences or internships?", _controller6),
            _buildQuestionTextField("Are there any specific industries or fields that you are particularly interested in?", _controller7),
            _buildQuestionTextField("How important is salary or earning potential to you?", _controller8),
            _buildQuestionTextField("Are there any values or causes that are important to you?", _controller9),
            _buildQuestionTextField("How do you envision your ideal work-life balance?", _controller10),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle submit button press here
                // You can access user input using _controller1.text, _controller2.text, etc.
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

 Widget _buildQuestionTextField(String question, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        question,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 8.0),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.grey),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            hintText: 'Enter your answer here...',
            border: InputBorder.none,
          ),
        ),
      ),
      SizedBox(height: 10.0),
    ],
  );
}

}

void main() {
  runApp(MaterialApp(
    home: QuestionPage(),
  ));
}

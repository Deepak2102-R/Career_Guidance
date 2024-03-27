import 'package:career_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:career_app/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), // Set text color and font weight
                decoration: InputDecoration(
                  labelText: 'Username',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)), // Use OutlineInputBorder for border
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), // Set text color and font weight
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)), // Use OutlineInputBorder for border
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), // Set text color and font weight
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)), // Use OutlineInputBorder for border
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), // Set text color and font weight
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)), // Use OutlineInputBorder for border
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), // Set text color and font weight
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)), // Use OutlineInputBorder for border
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('New User Registered !'),
      ),
    );

    // Navigate back to the login page
    Navigator.pop(context);
  },
  child: Text('Register'),
),
              SizedBox(height: 10.0), // Adding spacing between the register button and login button
              OutlinedButton(
                onPressed: () {
                // Add your registration logic here
              Navigator.pop(context);},
              child: Text('Existing User?'),
              ),
    // Show a snackbar message
    
            ],
          ),
        ),
      ),
    );
  }
}

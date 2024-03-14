import 'package:autism_advocacy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MyHomePage(title: "home",)),
      ); // Add closing parenthesis
    }); // Add semi-colon
  }
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue[50]
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/MedicalLogo.png', // Replace with your image path
                width: 200, // Adjust width as needed
                height: 100, // Adjust height as needed
                // You can also use other properties of Image widget to fit the image,
                // such as fit, alignment, etc.
              ),
              // SizedBox(height: 5), // Add some spacing between image and text
              Text(
                'Autism Advocacy',
                style: TextStyle(color: Color(0xFF0B8EAB), fontSize: 35 , fontWeight: FontWeight.bold ),
              )
            ],
          ),
        ),
    );
  }
}

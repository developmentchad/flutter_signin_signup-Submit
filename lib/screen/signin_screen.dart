import 'package:flutter/material.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/component/my_iconbtn.dart';
import 'package:onboarding_screen/screen/signup_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  signInWithEmailAndPassword() {}

  @override
  Widget build(BuildContext context) {
    //Scaffoldคือหน้าที่มีNav Bar
    return Scaffold(
      backgroundColor: Colors.grey[300],
appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../../assets/images/crane_game_arm_yowai.png', 
              width: 50, 
              height: 50, 
            ),
            const SizedBox(width: 8.0),
              Text("Claw Claze",
                textAlign:TextAlign.center,
                style:GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Colors.deepPurple[200],
                ),
              ),
          ],
        ),
        centerTitle: true,
      ),
      body: Form(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text("Hello, ready to get started?",
                  textAlign:TextAlign.center,
                  style:GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
            Text("Please sign in with your email and password.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
            const SizedBox(
              height: 20,
            ),                
            //เรียกmy_textfield.dart มีการร้องขอ parameter จาก required this.???
            MyTextField(
              controller: emailController,
              hintText: "Enter your email.",
              obscureText: false,
              labelText: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: passwordController,
              hintText: "Enter your password.",
              obscureText: true,
              labelText: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {}, 
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Colors.deepPurple[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //เรียกmy_button.dart มีการร้องขอ parameter จาก required this.???
            MyButton(onTap: signInWithEmailAndPassword, hinText: 'Sign In'),
            const SizedBox(
              height: 20,
            ),
            // or continue with            
            const SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey.shade400,
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ),
                Expanded(
                  child: Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade400,
                ),
                ),
              ],
            ),
            ),
            const SizedBox(
              height: 20,
            ),            
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyIconButton(imagPath: '../../assets/images/google_icon.png'),
                SizedBox(
                  width: 10,
                ),
                MyIconButton(imagPath: '../../assets/images/apple_icon.png'),
              ],
            ),
            // Not a member
            const SizedBox(
              height: 30,
            ),           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                        ),
                      );
                  }, 
                  child: Text(
                    'Register now.',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepPurple[400],
                    ),
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

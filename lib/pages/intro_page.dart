import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                'assets/trolley.json',
              ),
            ),

            const SizedBox(height: 75),

            Text(
              "EASYBUY",
              style: GoogleFonts.bebasNeue(
                fontSize: 48,
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Comprar ficou fácil",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            MyButton(
              onTap: () => Navigator.pushNamed(context, '/login_page'),
              widget: Icon(
                Icons.arrow_forward,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            )
          ],
        ),
      ),
    );
  }
}

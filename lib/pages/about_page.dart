import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/my_app_bar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const MyAppBar(
        title: '',
        actions: [],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 25),
                child: Text(
                  "Sobre",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 32,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, top: 10, bottom: 10, right: 25),
                child: Text(
                  "EASYBUY, comprar ficou fácil",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

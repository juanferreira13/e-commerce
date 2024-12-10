import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: DrawerHeader(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Lottie.asset(
                        'assets/trolley.json',
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              MyListTile(
                text: "S H O P",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),

              MyListTile(
                text: "C A R R I N H O",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/cart_page');
                },
              ),

              MyListTile(
                text: "C O N F I G U R A Ç Õ E S",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/settings_page');
                },
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: MyListTile(
                  text: "S O B R E",
                  icon: Icons.info,
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/about_page');
                  },
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "S A I R",
              icon: Icons.logout,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/intro_page', (route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }
}

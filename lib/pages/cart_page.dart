import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../components/my_button.dart';
import '../components/my_cart_item_tile.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void payNow(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        content:
            const Text("Tente novamente mais tarde"),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            color: Theme.of(context).colorScheme.secondary,
            elevation: 0,
            child: Text(
              'Ok',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 0),
                child: Text(
                  "Carrinho",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 32,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 25),
                child: Text(
                  "Confira seu carrinho antes de finalizar a compra",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),
              Expanded(
                child: cart.isEmpty
                    ? Center(
                        child: Text(
                          'Seu carrinho está vazio',
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        ),
                      )
                    : ListView.builder(
                        itemCount: cart.length,
                        itemBuilder: (context, index) {
                          final item = cart[index];
                          return MyCartItemTile(item: item);
                        },
                      ),
              ),

              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  children: [
                    Expanded(
                      child: cart.isEmpty
                          ? const SizedBox()
                          : MyButton(
                              onTap: () => payNow(context),
                              widget: Center(
                                child: Text(
                                  'C O M P R A R',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary,
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

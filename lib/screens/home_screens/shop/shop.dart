import 'package:clone_ui_tiktok/widgets/app_bar_application.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApplication(
        heightAppBar: 190,
        leading: const Text(''),
        title: SizedBox(
          height: 105,
          child: TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search users',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
        actions: const [Icon(Icons.shopping_cart)],
      ),
      body: const SizedBox(
        child: Text('data'),
      ),
    );
  }
}

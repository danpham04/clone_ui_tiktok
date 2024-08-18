import 'package:clone_ui_tiktok/screens/home_screens/shop/widgets/item_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.white],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            45.verticalSpace,
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.83.sp,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.camera_alt_outlined,
                        ),
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
                  SizedBox(
                    width: size.width * 0.1.sp,
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemBar(
                    name: 'Orders',
                    icon: Icons.assignment_outlined,
                    onPressed: () {},
                  ),
                  ItemBar(
                    name: 'Free Shipping',
                    icon: Icons.local_shipping_outlined,
                    onPressed: () {},
                  ),
                  ItemBar(
                    name: 'Messages',
                    icon: Icons.message,
                    onPressed: () {},
                  ),
                  ItemBar(
                      name: 'Buy Local',
                      icon: Icons.shopping_bag_outlined,
                      onPressed: () {}),
                  ItemBar(
                      name: 'Bonus',
                      icon: Icons.tiktok_outlined,
                      onPressed: () {}),
                  ItemBar(
                      name: 'Address',
                      icon: Icons.place_outlined,
                      onPressed: () {}),
                  ItemBar(
                      name: 'Payment', icon: Icons.wallet, onPressed: () {}),
                  ItemBar(
                      name: 'Help',
                      icon: Icons.help_outline_sharp,
                      onPressed: () {}),
                  ItemBar(
                      name: 'Policies',
                      icon: Icons.assignment_turned_in_outlined,
                      onPressed: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

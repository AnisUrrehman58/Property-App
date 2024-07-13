import 'package:flutter/material.dart';

import 'package:property_app/WishLIstPage/list_page.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
   createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  List<String> wishlistItems = []; // Wishlist items ki list

  void addToWishlist() {
    setState(() {
      wishlistItems.add('Item added to wishlist');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Your Wishlist Items:'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: wishlistItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(wishlistItems[index]),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: AddBookmarkButton(
        onPressed: addToWishlist,
      ),
    );
  }
}

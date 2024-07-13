import 'package:flutter/material.dart';


class AddBookmarkButton extends StatefulWidget {
  final VoidCallback onPressed;

  const AddBookmarkButton({super.key, required this.onPressed});

  @override
   createState() => _ABookmarkButtonState();
}

class _ABookmarkButtonState extends State<AddBookmarkButton> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isBookmarked ? Icons.bookmark : Icons.bookmark_border,
        color: isBookmarked ? Colors.red : null,
      ),
      onPressed: () {
        setState(() {
          isBookmarked = !isBookmarked;
        });
        widget.onPressed(); // Parent widget ko press action ke bare mein notify kart hai
      },
    );
  }
}


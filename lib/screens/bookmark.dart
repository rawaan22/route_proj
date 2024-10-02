import 'package:flutter/material.dart';
import 'package:graduation_proj/core/constants/constants.dart';

class BookmarkIcon extends StatefulWidget {
  const BookmarkIcon({Key? key}) : super(key: key);

  @override
  _BookmarkIconState createState() => _BookmarkIconState();
}

class _BookmarkIconState extends State<BookmarkIcon> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isBookmarked = !isBookmarked;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isBookmarked ? Constants.yellowColor : Color(0X80514f4f),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Icon(
          isBookmarked ? Icons.check : Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

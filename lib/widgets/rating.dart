import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({
    super.key,
  });

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              rating = 1;
            });
          },
          child: Icon(
            rating >= 1 ? Icons.star : Icons.star_border,
            color: rating >= 1 ? Colors.amber : Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              rating = 2;
            });
          },
          child: Icon(
            rating >= 2 ? Icons.star : Icons.star_border,
            color: rating >= 2 ? Colors.amber : Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              rating = 3;
            });
          },
          child: Icon(
            rating >= 3 ? Icons.star : Icons.star_border,
            color: rating >= 3 ? Colors.amber : Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              rating = 4;
            });
          },
          child: Icon(
            rating >= 4 ? Icons.star : Icons.star_border,
            color: rating >= 4 ? Colors.amber : Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              rating = 5;
            });
          },
          child: Icon(
            rating >= 5 ? Icons.star : Icons.star_border,
            color: rating >= 5 ? Colors.amber : Colors.black,
          ),
        ),
        Text(' ( $rating )')
      ],
    );
  }
}

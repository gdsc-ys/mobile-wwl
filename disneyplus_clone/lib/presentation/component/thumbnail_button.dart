import 'package:disneyplus_clone/presentation/screen/detail_screen.dart';
import 'package:flutter/material.dart';

class ThumbnailButton extends StatelessWidget {
  const ThumbnailButton({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.only(right: 10),
      child: Image.network(
        image,
        fit: BoxFit.fitWidth,
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen();
        }));
      },
    );
  }
}
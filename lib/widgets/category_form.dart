import 'package:flutter/material.dart';

class CategoryForm extends StatelessWidget {
  const CategoryForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    'assets/images/jujutsu-kaisen-gojo-satoru-hd-wallpaper-preview.jpg'),
              ),
              color: Colors.orange,
              borderRadius: BorderRadius.circular(12),
            ),
            height: 120,
            width: 200,
            child: const Center(
              child: Text(
                "Business",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

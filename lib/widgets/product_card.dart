import 'package:flutter/material.dart';
import 'package:foodle/pages/detail_page.dart';
import 'package:foodle/widgets/favorite.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailPage(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [FavoritWidget()],
              ),
              Expanded(
                child: Image.network(
                  'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1a8.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'Egg Muffin',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                color: Colors.transparent,
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$ 3.50'),
                  SizedBox(
                    height: 32,
                    child: FittedBox(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {},
                        child: const Text('Add'),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

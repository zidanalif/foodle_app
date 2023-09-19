import 'package:flutter/material.dart';
import 'package:foodle/widgets/favorite.dart';
import 'package:foodle/widgets/rating.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: FavoritWidget(),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: screenWidth < 768
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.network(
                        'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1a8.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                    ),
                    const Text(
                      'Egg Muffin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                      height: 8,
                    ),
                    const RatingWidget(),
                    const Divider(
                      color: Colors.transparent,
                      height: 8,
                    ),
                    const Text(
                      'About Egg Muffin',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                      height: 8,
                    ),
                    const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                    ),
                    const Divider(
                      color: Colors.transparent,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$ 3.50',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {},
                          child: const Text('Add to Cart'),
                        ),
                      ],
                    )
                  ],
                )
              : Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Expanded(
                          child: Image.network(
                            'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1a8.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          const Divider(
                            color: Colors.transparent,
                          ),
                          const Text(
                            'Egg Muffin',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          const Divider(
                            color: Colors.transparent,
                            height: 8,
                          ),
                          const RatingWidget(),
                          const Divider(
                            color: Colors.transparent,
                            height: 8,
                          ),
                          const Text(
                            'About Egg Muffin',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const Divider(
                            color: Colors.transparent,
                            height: 8,
                          ),
                          const Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                          ),
                          const Divider(
                            color: Colors.transparent,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '\$ 3.50',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.orange,
                                ),
                                onPressed: () {},
                                child: const Text('Add to Cart'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
    );
  }
}

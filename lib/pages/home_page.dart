import 'package:flutter/material.dart';
import 'package:foodle/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.network(
              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search',
              border: OutlineInputBorder(),
              isDense: true,
            ),
          ),
          const Divider(
            color: Colors.transparent,
          ),
          const Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const Divider(
            color: Colors.transparent,
            height: 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: Column(
                      children: [
                        SizedBox.square(
                          dimension: 60,
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/2821/2821801.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Pizza',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: Column(
                      children: [
                        SizedBox.square(
                          dimension: 60,
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/2821/2821776.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Burger',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: Column(
                      children: [
                        SizedBox.square(
                          dimension: 60,
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/4727/4727450.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Taco',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    child: Column(
                      children: [
                        SizedBox.square(
                          dimension: 60,
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/4940/4940015.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Chicken',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.transparent,
          ),
          const Text(
            'Popular Food',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const Divider(
            color: Colors.transparent,
            height: 8,
          ),
          GridView.builder(
            itemCount: 6,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.85,
              crossAxisCount: screenWidth < 768
                  ? 2
                  : screenWidth < 992
                      ? 4
                      : 6,
            ),
            itemBuilder: (context, index) => const ProductCardWidget(),
          ),
        ],
      ),
    );
  }
}

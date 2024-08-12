import 'package:electronics_market/controller/data_controller.dart';
import 'package:electronics_market/data/model/category_model.dart';
import 'package:electronics_market/data/model/product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentCategory = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DataController>().updateListCategory('0');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: SvgPicture.asset("assets/brand.svg"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.search, size: 30),
                ),
                hintText: "Search",
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: Consumer<DataController>(
              builder: (context, controller, child) {
                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    controller.dataRepository.categories.length,
                    (index) {
                      return CategoryChip(
                        category: controller.dataRepository.categories[index],
                      );
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Consumer<DataController>(
              builder: (context, controller, child) {
                return ListView.builder(
                  itemCount: controller.listCategory.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: controller.listCategory[index],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  const CategoryChip({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<DataController>().updateListCategory(category.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Chip(
          label: Text(category.name),
          backgroundColor: Colors.blue[100],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.product});
  Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed('detail', extra: product);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            // Rasm qismi
            Container(
              width: 100,
              height: 100,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                product.imagePath, // Rasm URL manzili
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Matn qismi
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          return Icon(
                            index < 4 ? Icons.star : Icons.star_border,
                            color: index < 4 ? Colors.orange : Colors.grey,
                            size: 16,
                          );
                        }),
                      ),
                      const SizedBox(width: 8),
                      // Reyting raqami
                      const Text(
                        '7.5',
                        style: TextStyle(color: Colors.orange, fontSize: 16),
                      ),
                      const SizedBox(width: 8),
                      // Buyurtmalar soni
                      const Text(
                        '154 orders',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Free Shipping',
                    style: TextStyle(color: Colors.green, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

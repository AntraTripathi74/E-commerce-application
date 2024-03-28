import 'package:flutter/material.dart';
import 'package:shopping_application/pages/cart_page.dart';
import 'package:shopping_application/widgets/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = const [ProductList(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:shopping_application/global_variables.dart';
// import 'package:shopping_application/product_cart.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   final List<String> filters = const ['All', 'Adidas', 'Nike', 'Bata'];
//   late String selectedFilter;

//   @override
//   void initState() {
//     super.initState();
//     selectedFilter = filters[0];
//   }

//   @override
//   Widget build(BuildContext context) {
//     const border = OutlineInputBorder(
//         borderSide: BorderSide(
//           color: Color.fromRGBO(225, 225, 225, 1),
//         ),
//         borderRadius: BorderRadius.horizontal(
//           left: Radius.circular(50),
//         ));

//     return Scaffold(
//         body: SafeArea(
//       child: Column(
//         children: [
//           const Row(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Text('Shoes\nCollection',
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
//               ),
//               Expanded(
//                 child: TextField(
//                     decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.search_sharp),
//                         hintText: 'Search',
//                         border: border,
//                         enabledBorder: border,
//                         focusedBorder: border)),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 120,
//             child: ListView.builder(
//                 itemCount: filters.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   final filter = filters[index];
//                   return Padding(
//                     padding: const EdgeInsets.only(left: 8.0, right: 8),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 8),
//                       child: GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedFilter = filter;
//                           });
//                         },
//                         child: Chip(
//                           backgroundColor: selectedFilter == filter
//                               ? Theme.of(context).colorScheme.primary
//                               : const Color.fromRGBO(245, 247, 249, 1),
//                           side: const BorderSide(
//                               color: Color.fromRGBO(245, 247, 249, 1)),
//                           label: Text(filter),
//                           labelStyle: const TextStyle(fontSize: 16),
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 15),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: products.length,
//               itemBuilder: (context, index) {
//                 final product = products[index];
//                 return ProductCard(
//                   title: product['title'] as String,
//                   price: product['price'] as double,
//                   image: product['imageUrl'] as String,
//                   backgroundColor: index.isEven 
//                   ? const Color.fromRGBO(216, 240, 253, 1) 
//                   :const Color.fromRGBO(245, 247, 249, 1)
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }

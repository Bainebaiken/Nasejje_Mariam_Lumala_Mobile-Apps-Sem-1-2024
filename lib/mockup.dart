import 'package:flutter/material.dart';

class MockupScreen extends StatelessWidget {
  const MockupScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                
              },
            ),
            const Text(
              'Details',
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Image.asset(
               'assets/banana.jpeg', // Replace with your asset image path
               width: 350,
               height: 350,
               fit: BoxFit.cover,
              ),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    'Ageratum',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text('4.8 (268 Reviews)'),
                ],
              ),
            ),
            // Description Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Ageratum is a genus of 40 to 60 tropical and warm temperature flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America ...',
                style: TextStyle(color: Colors.black),
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Size:', style: TextStyle(fontSize: 12)),
                      Text('Medium', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Plant:', style: TextStyle(fontSize: 12)),
                      Text('Orchid', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Height:', style: TextStyle(fontSize: 12)),
                      Text('12.6"', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Humidity:', style: TextStyle(fontSize: 12)),
                      Text('82%', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
         
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Price: \$39.99',
                    style: TextStyle(fontSize: 16),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle add to cart action
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Add to Cart'),
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



// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter/gestures.dart';

// class MockupScreen extends StatefulWidget {
//   const MockupScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _MockupScreenState createState() => _MockupScreenState();
// }

// class _MockupScreenState extends State<MockupScreen> {
//   bool _isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Details'),
//         backgroundColor: Colors.green,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Image at the top
//               Center(
//                 child: Image.asset(
//                'assets/banana.jpeg', // Replace with your asset image path
//                width: 350,
//                height: 350,
//                fit: BoxFit.cover,
//              ),
//               ),
//               const SizedBox(height: 20),

//               // Title and Rating stars in a row (1 star only) with reviews text in the same line
//               Row(
//                 children: [
//                   const Text(
//                     'Ageratum',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const Spacer(),
//                   RatingBar.builder(
//                     initialRating: 4.8,
//                     minRating: 1,
//                     itemSize: 20, // Size of the star
//                     itemCount: 1, // Showing only one star
//                     itemBuilder: (context, _) => const Icon(
//                       Icons.star,
//                       color: Color.fromARGB(255, 4, 209, 8),
//                     ),
//                     onRatingUpdate: (rating) {},
//                   ),
//                   const SizedBox(
//                       width: 10), // Space between star and review text
//                   const Text(
//                     '4.8 (268 Reviews)', // Showing the rating with review count
//                     style: TextStyle(fontSize: 13, color: Colors.grey),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),

//               RichText(
//                 text: TextSpan(
//                   text:
//                       'Ageratum is a genus of 40 to 60 tropical and warm temperate flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America...',
//                   style: const TextStyle(
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                   children: [
//                     TextSpan(
//                       text: _isExpanded ? ' Show Less' : ' Read More',
//                       style: const TextStyle(
//                         fontSize: 10,
//                         color: Colors.green,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       recognizer: TapGestureRecognizer()
//                         ..onTap = () {
//                           setState(() {
//                             _isExpanded = !_isExpanded;
//                           });
//                         },
//                     ),
//                   ],
//                 ),
//               ),
//               if (_isExpanded)
//                 const Padding(
//                   padding: EdgeInsets.only(top: 10),
//                   child: Text(
//                     'The genus includes annuals and perennials, often used in gardens for their vibrant colors and attractive flowers.',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//               const SizedBox(height: 20),

//               // Plant details
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _buildDetailColumn('Size', 'Medium'),
//                   _buildDetailColumn('Plant', 'Orchid'),
//                   _buildDetailColumn('Height', '12.6"'),
//                   _buildDetailColumn('Humidity', '82%'),
//                 ],
//               ),
//               const SizedBox(height: 20),

//               // Price and Add to Cart button
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     '\$39.99',
//                     style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 7, 7, 7),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add to Cart functionality
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color.fromARGB(255, 22, 190, 7),
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 30,
//                         vertical: 15,
//                       ),
//                       textStyle: const TextStyle(
//                         fontSize: 16,
//                       ),
//                     ),
//                     child: const Text('Add to Cart'),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper method to create the plant detail columns
//   Widget _buildDetailColumn(String title, String value) {
//     return Column(
//       children: [
//         Text(
//           title,
//           style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 119, 118, 118)),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           value,
//           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }

// class RatingBar {
//   static builder({required double initialRating, required int minRating, required int itemSize, required int itemCount, required Icon Function(dynamic context, dynamic _) itemBuilder, required Null Function(dynamic rating) onRatingUpdate}) {}
// }



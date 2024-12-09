import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/gestures.dart';

class MockupScreen extends StatefulWidget {
  const MockupScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MockupScreenState createState() => _MockupScreenState();
}

class _MockupScreenState extends State<MockupScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image at the top
              Center(
                child: Image.network(
                  'https://cdn11.bigcommerce.com/s-2drwt2az/images/stencil/original/products/5045/41511/apiou3j0u__54598.1592324130.jpg?c=2', // Replace with your image URL
                  width: 350,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              // Title and Rating stars in a row (1 star only) with reviews text in the same line
              Row(
                children: [
                  const Text(
                    'Ageratum',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  RatingBar.builder(
                    initialRating: 4.8,
                    minRating: 1,
                    itemSize: 20, // Size of the star
                    itemCount: 1, // Showing only one star
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 4, 209, 8),
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const SizedBox(
                      width: 10), // Space between star and review text
                  const Text(
                    '4.8 (268 Reviews)', // Showing the rating with review count
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  text:
                      'Ageratum is a genus of 40 to 60 tropical and warm temperate flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America...',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: _isExpanded ? ' Show Less' : ' Read More',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                    ),
                  ],
                ),
              ),
              if (_isExpanded)
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'The genus includes annuals and perennials, often used in gardens for their vibrant colors and attractive flowers.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              const SizedBox(height: 20),

              // Plant details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDetailColumn('Size', 'Medium'),
                  _buildDetailColumn('Plant', 'Orchid'),
                  _buildDetailColumn('Height', '12.6"'),
                  _buildDetailColumn('Humidity', '82%'),
                ],
              ),
              const SizedBox(height: 20),

              // Price and Add to Cart button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '\$39.99',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 7, 7, 7),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add to Cart functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 22, 190, 7),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to create the plant detail columns
  Widget _buildDetailColumn(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 119, 118, 118)),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class RatingBar {
  static builder({required double initialRating, required int minRating, required int itemSize, required int itemCount, required Icon Function(dynamic context, dynamic _) itemBuilder, required Null Function(dynamic rating) onRatingUpdate}) {}
}


// // // import 'package:flutter/material.dart';



// // // class MockupScreen extends StatelessWidget {
// // //   const MockupScreen({super.key});


// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SingleChildScrollView(
// // //       child: Column(
// // //         children: [
// // //           // Image asset with larger size and fit property
// // //           Image.asset(
// // //             'assets/banana.jpeg',
// // //             width: double.infinity, // Fills the width of the screen
// // //             height: 500, // Adjusted height for a larger image
// // //             fit: BoxFit.cover, // Ensures the image covers the space proportionally
// // //           ),

// // //           // First text widget with bold font weight
// // //           const Text(
// // //             'Ageratum',
// // //             style: TextStyle(
// // //               fontSize: 22.0,
// // //               fontWeight: FontWeight.bold, // Bold font
// // //               color: Colors.black,
// // //             ),
// // //           ),

// // //           // SizedBox for spacing
// // //           const SizedBox(height: 10),

// // //           // Second text widget centered and bold
          
// // //           const Text(
// // //             'Ageratum is a genus of 40 to 60 tropical and warm temperature flowering annuals and perennials from the family Asteracea,tribe Eupatorieae. Most species  are antive to centralAmerica.....Readmore',
// // //             style: TextStyle(
// // //               fontSize: 19.0,
// // //               fontWeight: FontWeight.w500,
// // //               color: Colors.black,
// // //             ),
// // //             textAlign: TextAlign.center, // Center the text
// // //           ),

// // //           // Padding to add space before the button
// // //           const SizedBox(height: 20),

          

// // //           // Button with centered text and padding
// // //           Padding(
// // //             padding: const EdgeInsets.symmetric(horizontal: 20.0),
// // //             child: ElevatedButton(
// // //               onPressed: () {
// // //                 // Handle button press action
// // //               },
// // //               style: ElevatedButton.styleFrom(
// // //                 padding: const EdgeInsets.symmetric(vertical: 15.0), // Padding inside button
// // //                 shape: RoundedRectangleBorder( // Make the button rounded
// // //                   borderRadius: BorderRadius.circular(10),
// // //                 ),
// // //                 backgroundColor: const Color.fromARGB(255, 5, 125, 97), // Button background color
// // //               ),
// // //               child: const Center(
// // //                 child: Text(
// // //                   'Add to cart',
// // //                   style: TextStyle(
// // //                     fontSize: 16,
// // //                     color: Color.fromARGB(255, 5, 125, 97) // Text color
// // //                   ),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
          
// // //           // Padding to add space before the button
// // //           const SizedBox(height: 20),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_icons/flutter_icons.dart'; // For easy access to icons

// // class MockupScreen extends StatelessWidget {
// //   const MockupScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return SingleChildScrollView(
// //       child: Column(
// //         children: [
// //           // Image asset with larger size and fit property
// //           Image.asset(
// //             'assets/banana.jpeg',
// //             width: double.infinity, // Fills the width of the screen
// //             height: 500, // Adjusted height for a larger image
// //             fit: BoxFit.cover, // Ensures the image covers the space proportionally
// //           ),

// //           // Row for "Ageratum" text on the right side
// //           const Row(
// //             mainAxisAlignment: MainAxisAlignment.end,
// //             children: [
// //               Padding(
// //                 padding: EdgeInsets.only(right: 20.0),
// //                 child: Text(
// //                   'Ageratum',
// //                   style: TextStyle(
// //                     fontSize: 22.0,
// //                     fontWeight: FontWeight.bold, // Bold font
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),

// //           // SizedBox for spacing
// //           const SizedBox(height: 10),

// //           // Second text widget centered and bold
// //           const Text(
// //             'Ageratum is a genus of 40 to 60 tropical and warm temperature flowering annuals and perennials from the family Asteracea, tribe Eupatorieae. Most species are native to central America.....Read more',
// //             style: TextStyle(
// //               fontSize: 19.0,
// //               fontWeight: FontWeight.w500,
// //               color: Colors.black,
// //             ),
// //             textAlign: TextAlign.center, // Center the text
// //           ),

// //           // SizedBox for spacing
// //           const SizedBox(height: 20),

// //           // Row for icons: size, plant, height, humidity
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             children: [
// //               Column(
// //                 children: const [
// //                   Icon(FlutterIcons.ruler_2, size: 30), // Icon for size
// //                   Text('Size'),
// //                 ],
// //               ),
// //               Column(
// //                 children: const [
// //                   Icon(FlutterIcons.seedling_faw, size: 30), // Icon for plant
// //                   Text('Plant'),
// //                 ],
// //               ),
// //               Column(
// //                 children: const [
// //                   Icon(FlutterIcons.height_faw5s, size: 30), // Icon for height
// //                   Text('Height'),
// //                 ],
// //               ),
// //               Column(
// //                 children: const [
// //                   Icon(FlutterIcons.water_faw5s, size: 30), // Icon for humidity
// //                   Text('Humidity'),
// //                 ],
// //               ),
// //             ],
// //           ),

// //           // SizedBox for spacing
// //           const SizedBox(height: 20),

// //           // Padding for the button
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //             child: Row(
// //               children: [
// //                 // Button with reduced size and pushed to the left
// //                 ElevatedButton(
// //                   onPressed: () {
// //                     // Handle button press action
// //                   },
// //                   style: ElevatedButton.styleFrom(
// //                     padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0), // Reduced padding inside button
// //                     shape: RoundedRectangleBorder( // Make the button rounded
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                     backgroundColor: const Color.fromARGB(255, 5, 125, 97), // Button background color
// //                   ),
// //                   child: const Text(
// //                     'Add to cart',
// //                     style: TextStyle(
// //                       fontSize: 14, // Smaller text size
// //                       color: Colors.white, // Text color
// //                     ),
// //                   ),
// //                 ),

// //                 // SizedBox for spacing between button and price text
// //                 const SizedBox(width: 10),

// //                 // Price text to the right of the button
// //                 const Text(
// //                   '\$39.99',
// //                   style: TextStyle(
// //                     fontSize: 16,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),

// //           // SizedBox for spacing after the button
// //           const SizedBox(height: 20),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class FlutterIcons {
// //   // ignore: non_constant_identifier_names
// //   static IconData? water_faw5s;
  
// //   static IconData? ruler_2;
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart'; // For easy access to icons

// class MockupScreen extends StatelessWidget {
//   const MockupScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           // Image asset with larger size and fit property
//           Image.asset(
//             'assets/banana.jpeg',
//             width: double.infinity, // Fills the width of the screen
//             height: 500, // Adjusted height for a larger image
//             fit: BoxFit.cover, // Ensures the image covers the space proportionally
//           ),

//           // Row for "Ageratum" text on the right side
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(right: 20.0),
//                 child: Text(
//                   'Ageratum',
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     fontWeight: FontWeight.bold, // Bold font
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           // SizedBox for spacing
//           const SizedBox(height: 10),

//           // Second text widget centered and bold
//           const Text(
//             'Ageratum is a genus of 40 to 60 tropical and warm temperature flowering annuals and perennials from the family Asteracea, tribe Eupatorieae. Most species are native to central America.....Read more',
//             style: TextStyle(
//               fontSize: 19.0,
//               fontWeight: FontWeight.w500,
//               color: Colors.black,
//             ),
//             textAlign: TextAlign.center, // Center the text
//           ),

//           // SizedBox for spacing
//           const SizedBox(height: 20),

//           // Row for icons: size, plant, height, humidity
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 children: [
//                   Icon(FlutterIcons.ruler_2, size: 30), // Icon for size
//                   const Text('Size'),
//                 ],
//               ),
//               Column(
//                 children: const [
//                   Icon(FlutterIcons.seedling_faw, size: 30), // Icon for plant
//                   Text('Plant'),
//                 ],
//               ),
//               Column(
//                 children: const [
//                   Icon(FlutterIcons.height_faw5s, size: 30), // Icon for height
//                   Text('Height'),
//                 ],
//               ),
//               Column(
//                 children: const [
//                   Icon(FlutterIcons.water_faw5s, size: 30), // Icon for humidity
//                   Text('Humidity'),
//                 ],
//               ),
//             ],
//           ),

//           // SizedBox for spacing
//           const SizedBox(height: 20),

//           // Padding for the button
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Row(
//               children: [
//                 // Button with reduced size and pushed to the left
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle button press action
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0), // Reduced padding inside button
//                     shape: RoundedRectangleBorder( // Make the button rounded
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     backgroundColor: const Color.fromARGB(255, 5, 125, 97), // Button background color
//                   ),
//                   child: const Text(
//                     'Add to cart',
//                     style: TextStyle(
//                       fontSize: 14, // Smaller text size
//                       color: Colors.white, // Text color
//                     ),
//                   ),
//                 ),

//                 // SizedBox for spacing between button and price text
//                 const SizedBox(width: 10),

//                 // Price text to the right of the button
//                 const Text(
//                   '\$39.99',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // SizedBox for spacing after the button
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }

// class FlutterIcons {  // Define your icons as static properties
//   static IconData water = FlutterIcons.water_faw5s;
//   static const IconData ruler = FlutterIcons.ruler;
//   static IconData seedling = FlutterIcons.seedling_faw;
//   static IconData height = FlutterIcons.height_faw5s;
  
//   static IconData water_faw5s;
  
//   static IconData height_faw5s;

//   // Add any other icons you need
// }





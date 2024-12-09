// import 'package:flutter/material.dart';

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

//           // First text widget with bold font weight
//           const Text(
//             'Ageratum',
//             style: TextStyle(
//               fontSize: 22.0,
//               fontWeight: FontWeight.bold, // Bold font
//               color: Colors.black,
//             ),
//           ),

//           // SizedBox for spacing
//           const SizedBox(height: 10),

//           // Second text widget centered and bold
          
//           const Text(
//             'Ageratum is a genus of 40 to 60 tropical and warm temperature flowering annuals and perennials from the family Asteracea,tribe Eupatorieae. Most species  are antive to centralAmerica.....Readmore',
//             style: TextStyle(
//               fontSize: 19.0,
//               fontWeight: FontWeight.w500,
//               color: Colors.black,
//             ),
//             textAlign: TextAlign.center, // Center the text
//           ),

//           // Padding to add space before the button
//           const SizedBox(height: 20),

          

//           // Button with centered text and padding
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Handle button press action
//               },
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(vertical: 15.0), // Padding inside button
//                 shape: RoundedRectangleBorder( // Make the button rounded
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 backgroundColor: const Color.fromARGB(255, 5, 125, 97), // Button background color
//               ),
//               child: const Center(
//                 child: Text(
//                   'Add to cart',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Color.fromARGB(255, 5, 125, 97) // Text color
//                   ),
//                 ),
//               ),
//             ),
//           ),
          
//           // Padding to add space before the button
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart'; // For easy access to icons

class MockupScreen extends StatelessWidget {
  const MockupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Image asset with larger size and fit property
          Image.asset(
            'assets/banana.jpeg',
            width: double.infinity, // Fills the width of the screen
            height: 500, // Adjusted height for a larger image
            fit: BoxFit.cover, // Ensures the image covers the space proportionally
          ),

          // Row for "Ageratum" text on the right side
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text(
                  'Ageratum',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold, // Bold font
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          // SizedBox for spacing
          const SizedBox(height: 10),

          // Second text widget centered and bold
          const Text(
            'Ageratum is a genus of 40 to 60 tropical and warm temperature flowering annuals and perennials from the family Asteracea, tribe Eupatorieae. Most species are native to central America.....Read more',
            style: TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            textAlign: TextAlign.center, // Center the text
          ),

          // SizedBox for spacing
          const SizedBox(height: 20),

          // Row for icons: size, plant, height, humidity
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(FlutterIcons.ruler_2, size: 30), // Icon for size
                  Text('Size'),
                ],
              ),
              Column(
                children: const [
                  Icon(FlutterIcons.seedling_faw, size: 30), // Icon for plant
                  Text('Plant'),
                ],
              ),
              Column(
                children: const [
                  Icon(FlutterIcons.height_faw5s, size: 30), // Icon for height
                  Text('Height'),
                ],
              ),
              Column(
                children: const [
                  Icon(FlutterIcons.water_faw5s, size: 30), // Icon for humidity
                  Text('Humidity'),
                ],
              ),
            ],
          ),

          // SizedBox for spacing
          const SizedBox(height: 20),

          // Padding for the button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                // Button with reduced size and pushed to the left
                ElevatedButton(
                  onPressed: () {
                    // Handle button press action
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0), // Reduced padding inside button
                    shape: RoundedRectangleBorder( // Make the button rounded
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromARGB(255, 5, 125, 97), // Button background color
                  ),
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 14, // Smaller text size
                      color: Colors.white, // Text color
                    ),
                  ),
                ),

                // SizedBox for spacing between button and price text
                const SizedBox(width: 10),

                // Price text to the right of the button
                const Text(
                  '\$39.99',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          // SizedBox for spacing after the button
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}



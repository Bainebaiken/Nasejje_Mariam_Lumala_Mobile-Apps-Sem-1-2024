// (a)
//  its an application that allows developers to build natively compiled applications for mobile, web, and desktop from a single codebase
  
//   types of applications 
// web application
// mobile application
// desktop applications 

// // (b)
// it helps to  write code once and run it on multiple platforms, saving time and resources.
// Features like Hot Reload allow developers to instantly view changes in the app without restarting it, speeding up the development process.
// Flutter offers a wide range of pre-built widgets and the flexibility to create custom designs.
 
// //  (c)
//  Dart is a programming language optimized for building fast, scalable, and portable applications.
//       why
// Dart compiles directly to native code, which ensures fast execution.
// Hot Reload: Dart's JIT compilation allows Flutter to offer a real-time coding experience.
// Rich Features: Dart provides features like a strong type system, async programming, and more, making app development smoother.

// (d)
//  Hot reload is a feature in Flutter that allows developers to see the effects of code changes almost instantly without restarting the app or losing its current state.
//          How Hot Reload Works
// When a developer makes changes to the code, such as modifying the UI or logic, they can save the file.
// The framework automatically rebuilds the widget tree, incorporating the changes while preserving the app's current state .

// (e)
// Single Codebase: Write one codebase that works seamlessly on multiple platforms, including iOS, Android, web, and desktop.
// Hot Reload: Instantly reflects code changes in the running app without restarting, boosting productivity and speeding up debugging.
// Pre-Built Widgets: Includes a wide range of customizable widgets.

// (f)
//    what are statefull and stateless widget  give an example when to use each 
//    A Stateless Widget cannot change its state once it has been built. for example in displaying static content, such as a header, logo.
//    A Stateful Widget can maintain and update state information. for example in Forms that allow input and validation.

import 'package:flutter/foundation.dart';

void main() {
  // Call functions one by one
  runAddTwoNumbers();
  runCheckEvenOrOdd();
  runNamesMap();
}

// (g) Add two numbers
int addTwoNumbers(int num1, int num2) {
  return num1 + num2;
}

void runAddTwoNumbers() {
  int result = addTwoNumbers(5, 7);
  if (kDebugMode) {
    print("The sum is: $result");
  }
}

// (h) Check if a number is even or odd
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    if (kDebugMode) {
      print("$number is even.");
    }
  } else {
    if (kDebugMode) {
      print("$number is odd.");
    }
  }
}

void runCheckEvenOrOdd() {
  int num = 7; // Change this value to test with different numbers
  checkEvenOrOdd(num);
}

// (i) Demonstrate the use of a map
void runNamesMap() {
  // Create a map to store names with corresponding IDs
  Map<int, String> namesMap = {
    1: "Mariam",
    2: "Shamsham",
    3: "Nillan",
  };

  // Print the names
  if (kDebugMode) {
    print("Names in the map:");
  }
  namesMap.forEach((key, value) {
    if (kDebugMode) {
      print("ID $key: $value");
    }
  });
}



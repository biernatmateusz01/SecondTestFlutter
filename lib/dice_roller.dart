// import 'package:aplikacjaflutter/small_text.dart';
// import 'package:flutter/material.dart';
// import 'package:aplikacjaflutter/styled_text.dart';

// class DiceRoller extends StatefulWidget {
//   const DiceRoller({super.key});

//   @override
//   State<DiceRoller> createState() {
//     return _DiceRollerState();
//   }
// }

// class _DiceRollerState extends State<DiceRoller> {
//   var isShowed = false;
//   var name = 'Filip';
//   var imageUrl = "assets/images/1.webp";
//   var isClicked = false;
//   var iconSize = 30.0;
//   List<String> names = ["Alice", "Bob", "Charlie"];
//   String enteredText = '';

//   void logName() {
//     Future.delayed(const Duration(seconds: 2), () {
//       setState(() {
//         isShowed = !isShowed;
//         imageUrl = '';
//       });
//       print('This is executed after 2 seconds');
//     });
//   }

//   void logXd() {
//     setState(() {
//       if (name == 'Filip') {
//         name = 'Mateusz';
//       } else {
//         name = 'Filip';
//       }
//     });
//   }

//   @override
//   Widget build(context) {
//     return Column(
//       children: [
//         TextField(
//           onChanged: (value) {
//             setState(() {
//               enteredText = value;
//             });
//           },
//           decoration: const InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'me',
//           ),
//         ),
//         // imageUrl != ''
//         //     ? Image.asset(
//         //         imageUrl,
//         //         width: 200,
//         //         height: 300,
//         //       )
//         //     : const SizedBox(),
//         // const StyledText(text: ''),
//         // const StyledText(text: 'Rogić'),
//         // TextButton(onPressed: logName, child: const Text('kliknij')),
//         // StyledText(text: name),
//         // Switch(
//         //   value: isClicked,
//         //   onChanged: (bool value) {
//         //     setState(() {
//         //       isClicked = value;
//         //     });
//         //   },
//         // ),
//         // SmallText(
//         //   text: isClicked.toString(),
//         // ),
//         // SmallText(text: enteredText),
//         // enteredText.length > 1
//         //     ? const SmallText(text: 'jest')
//         //     : const SmallText(text: 'nie ma')
//         ListView.builder(
//           itemCount: names.length,
//           prototypeItem:const  ListTile(
//             title: Text('asdasd'),
//           ),
//           itemBuilder: (context, index) {
//             return const  ListTile(
//               title: Text('asdsd'),
//             );
//           },
//         )
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  List<String> names = ["Alice", "Bob", "Charlie", "Valentin"];
  var enteredText = '';
  var selectedValue = 'Alice'; // Initialize selectedValue with a default value

  void printName(index) {
    // print('Selected item: ${names[index]}');
    setState(() {
      names = ["Alice", "Bob", "Charlie", "Valentin"];
      enteredText = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: names.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        TextField(
          onChanged: (value) {
            setState(() {
              enteredText = value;
            });
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter Text',
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  printName(index);
                },
                child: ListTile(
                  title: Text(names[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

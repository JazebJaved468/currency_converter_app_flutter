import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController inputfield = TextEditingController();

  num result = 297.50;
  num value = 1;
  void convertCurrency() {
    num exchangeRate = 297.50;
    value = double.parse(inputfield.text);
    result = value * exchangeRate;

    setState(() {});
  }

  final border = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.black,
      width: 2.0,
      style: BorderStyle.solid,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
    borderRadius: BorderRadius.circular(10),
  );

  @override
  void dispose() {
    inputfield.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    inputfield.clear();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Currency Converter",
          style: TextStyle(),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  'usd ---> Pkr',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    // backgroundColor: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Text(
                  '$value = ${result.toStringAsFixed(3)} ',
                  // '$value = ${result!=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)} ',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    // backgroundColor: Colors.yellow,
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: inputfield,
                  style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  onSubmitted: (value) {
                    convertCurrency();
                  },
                  decoration: InputDecoration(
                    hintText: "Enter amount in USD",
                    hintStyle: const TextStyle(
                      color: Colors.white60,
                    ),
                    contentPadding: const EdgeInsets.all(5),
                    prefixIcon: const Icon(
                      Icons.monetization_on_outlined,
                    ),
                    prefixIconColor: Colors.white60,
                    filled: true,
                    fillColor: const Color.fromARGB(95, 112, 112, 112),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder:
                        border, // using border defined above in variable
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    convertCurrency();
                  },
                  child: const Text(
                    "Convert",
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: const Text(
                  "Powered By: M. Jazeb Javed",
                  style: TextStyle(
                    color: Color.fromARGB(144, 0, 0, 0),
                    // backgroundColor: Colors.yellow,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}






// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Currency Converter",
//           style: TextStyle(),
//         ),
//         backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 margin: const EdgeInsets.only(bottom: 30),
//                 child: Text(
//                   '$result',
//                   style: const TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     // backgroundColor: Colors.yellow,
//                     fontSize: 40,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 margin: const EdgeInsets.only(bottom: 20),
//                 child: TextField(
//                   controller: inputfield,
//                   style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//                   keyboardType:
//                       const TextInputType.numberWithOptions(decimal: true),
//                   onSubmitted: (value) {
//                     convertCurrency();
//                   },
//                   decoration: InputDecoration(
//                     hintText: "Enter amount in USD",
//                     hintStyle: const TextStyle(
//                       color: Colors.white60,
//                     ),
//                     contentPadding: const EdgeInsets.all(5),
//                     prefixIcon: const Icon(
//                       Icons.monetization_on_outlined,
//                     ),
//                     prefixIconColor: Colors.white60,
//                     filled: true,
//                     fillColor: Color.fromARGB(95, 112, 112, 112),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(
//                         color: Colors.black,
//                         width: 1.0,
//                         style: BorderStyle.solid,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder:
//                         border, // using border defined above in variable
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     minimumSize: const Size(double.infinity, 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                   ),
//                   onPressed: () {
//                     convertCurrency();
//                   },
//                   child: const Text(
//                     "Convert",
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 50),
//                 child: Text(
//                   "Powered By: M. Jazeb Javed",
//                   style: TextStyle(
//                     color: Color.fromARGB(144, 0, 0, 0),
//                     // backgroundColor: Colors.yellow,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

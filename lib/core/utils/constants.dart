// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class Constants {
//   static void showErrorDialog({
//     required BuildContext context,
//     required String msg,
//   }) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(
//           msg,
//           style: const TextStyle(
//             color: Colors.black,
//             fontSize: 16,
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "Ok",
//               style: TextStyle(
//                 color: Colors.red,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   static void showToast({
//     required String msg,
//     Color? color,
//     ToastGravity? gravity,
//   }) {
//     Fluttertoast.showToast(
//       msg: msg,
//       backgroundColor: color ?? Colors.black,
//       gravity: gravity ?? ToastGravity.BOTTOM,
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

// class DonationsForm extends StatelessWidget {
//    DonationsForm({super.key});
//
//   final formKey = GlobalKey<FormState>();
//
//   String name = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 40, right: 40),
//       child: Form(
//         key: formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // const SizedBox(
//             //   height: 100,
//             // ),
//             Text(
//               "Here To Get ",
//               style: TextStyle(
//                 fontSize: 30,
//                 color: kPrimaryColor,
//               ),
//             ),
//             Text(
//               "Welcomed !",
//               style: TextStyle(
//                 fontSize: 30,
//                 color: kPrimaryColor,
//               ),
//             ),
//             // const SizedBox(
//             //   height: 150,
//             // ),
//             TextFormField(
//               decoration: const InputDecoration(
//                 labelText: "ادخل اسمك"
//               ),
//               validator: (value) {
//                 if(value!.isEmpty || !RegExp(r'^[أ-ي]').hasMatch(value!)){
//                    return" ادخل الاسم بشكل صحيح";
//                 }else {
//                   return null;
//                 }
//               },
//             ),
//
//             // const SizedBox(
//             //   height: 150,
//             // ),
//             TextFormField(
//               decoration: const InputDecoration(
//                   labelText: "ادخل رقمك"
//               ),
//               validator: (value) {
//                 if(value!.isEmpty || !RegExp(r'^[+]*[0-9]{10}').hasMatch(value!)){
//                   return "ادخل الرقم بشكل صحيح";
//                 }else {
//                   return null;
//                 }
//               },
//             ),
//
//             // const SizedBox(
//             //   height: 150,
//             // ),
//             TextFormField(
//               decoration: const InputDecoration(
//                   labelText: ""
//               ),
//               validator: (value) {
//                 if(value!.isEmpty){
//                   return "الرجاء ادخال الاسم";
//                 }else {
//                   return null;
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class DonationsForm extends StatelessWidget {
  DonationsForm({super.key,  this.hintText,this.onChange});

  Function(String)? onChange;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value!.isEmpty){
          return "This field is required";
        }
      },
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
// import 'package:fazaa/constants.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import '../donations_form.dart';
//
// String? name;
// String? phone;
// bool isLoading = false;
// GlobalKey<FormState> formKey = GlobalKey();
//
// Widget myBox(int index) {
//   return ModalProgressHUD(
//     inAsyncCall: isLoading,
//     child: Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: Form(
//           key: formKey,
//           child:ListView(
//             children: [
//               const SizedBox(
//                 height: 100,
//               ),
//               Image.asset("asset/images/earthquake/N6.jpg",
//               height: 100,),
//               DonationsForm(
//                 onChange: (p0) {
//                   name =p0;
//                 },
//                 hintText: "ادخل اسمك",
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               DonationsForm(
//                 onChange: (p0) {
//                   phone = p0;
//                 },
//                 hintText: "ادخل رقمك",
//               ),
//               const SizedBox(
//                 height: 20,
//               )
//             ],
//           ) ,
//         ),
//       ),
//     )
//   );
// }


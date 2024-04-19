import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fazaa/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class TimeDonation extends StatefulWidget {
  const TimeDonation({super.key});

  @override
  State<TimeDonation> createState() => _TimeDonationState();
}

class _TimeDonationState extends State<TimeDonation> {
  CollectionReference donation =
      FirebaseFirestore.instance.collection("donation");

  final _formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final amountController = TextEditingController();
  final methodController = TextEditingController();
  final detailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("تبرع بوقتك لتصنع فرقاً إيجابياً في حياة الآخرين!",
        style: TextStyle(fontSize: 14),),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/donations/time.jpg",
                  height: 200,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "الاسم الكامل",
                    prefixIcon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: "رقم الهاتف",
                    //border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: kPrimaryColor,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: " البريد الإلكتروني",
                    prefixIcon: Icon(
                      Icons.email,
                      color: kPrimaryColor,
                    ),
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: amountController,
                  decoration: const InputDecoration(
                    labelText: " المهارات والخبرات ",
                    // border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: methodController,
                  decoration: InputDecoration(
                    labelText: " الوقت المتاح:",
                    prefixIcon: Icon(
                      Icons.access_time_outlined,
                      color: kPrimaryColor,
                    ),
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: detailController,
                  decoration: const InputDecoration(
                    labelText: " التفضيلات",
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    CollectionReference collRef =
                        FirebaseFirestore.instance.collection("donation");
                    collRef.add(
                      {
                        "name": nameController.text,
                        "phone": phoneController.text,
                        "email": emailController.text,
                        "skills": amountController.text,
                        "time": detailController.text,
                        "more": methodController.text,
                      },
                    );
                    nameController.clear();
                    phoneController.clear();
                    emailController.clear();
                    amountController.clear();
                    detailController.clear();
                    methodController.clear();
                    },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "إرسال",
                        style: TextStyle(
                          // color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

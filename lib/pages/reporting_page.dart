import 'package:fazaa/constants.dart';
import 'package:flutter/material.dart';

class ReportingPage extends StatefulWidget {
  const ReportingPage({super.key});

  @override
  State<ReportingPage> createState() => _ReportingPageState();
}

class _ReportingPageState extends State<ReportingPage> {
  final _formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final locationController = TextEditingController();
  final typeController = TextEditingController();
  final descController = TextEditingController();
  final detailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("قدم بلاغك"),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("asset/donations/reprting.jpg",
                  height: 200,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller:nameController ,
                  decoration: const InputDecoration(
                    labelText: "الاسم",
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
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
                  decoration: const InputDecoration(
                    labelText: "رقم الهاتف",
                    //border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: locationController,
                  decoration: const InputDecoration(
                    labelText: "عنوان الإقامة الحالي",
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: typeController,
                  decoration: const InputDecoration(
                    labelText: "نوع الطارئ ",
                   // border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller:descController ,
                  decoration: const InputDecoration(
                    labelText: "وصف موجز للحالة والمشكلة التي تحتاج إلى حل",
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
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
                    labelText: "أي تفاصيل إضافية قد تكون مفيدة للفرق الطبية أو الإنقاذ",
                    //border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "هذا الحقل ضروري";
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    if(_formfield.currentState!.validate()){
                      //print("Success");
                      nameController.clear();
                      phoneController.clear();
                      locationController.clear();
                      typeController.clear();
                      detailController.clear();
                      descController.clear();
                    }
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
                          color: Colors.black38,
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

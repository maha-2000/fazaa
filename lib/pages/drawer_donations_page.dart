import 'package:fazaa/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class DrawerDonationsPage extends StatelessWidget {
   const DrawerDonationsPage({super.key});


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Container(
        color: kPrimaryColor,
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("donation").snapshots(),
          builder: (context, snapshot) {
            List<Row> donationWidgets = [];
            if(snapshot.hasData)
            {
              final donations = snapshot.data?.docs.reversed.toList();
              for(var donation in donations!){
                final donationWidget = Row(
                  children: [
                    Text(donation["name"]),
                    Text(donation["email"]),
                  ],
                );
                donationWidgets.add(donationWidget);
              }
            }
            return Expanded(
              child: ListView(
                children: donationWidgets,
              ),
            );
          },
        ),
      ),
    );
  }
}


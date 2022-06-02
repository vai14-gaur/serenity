// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class GetUserDetails extends StatelessWidget {
  final String documentId;

  GetUserDetails({required this.documentId});

  @override
  Widget build(BuildContext context) {
    //get the collection
    CollectionReference user = FirebaseFirestore.instance.collection('user');

    return FutureBuilder<DocumentSnapshot>(
      future: user.doc(documentId).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          

          return Text('Name: ${data['name']}');
        }
        // ignore: prefer_const_constructors
        return Text('Loading....');
      }),
    );
  }
}


//userfetch 



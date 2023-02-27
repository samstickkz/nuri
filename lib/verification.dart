import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.5, vertical: 10),
          child: SingleChildScrollView(
            child: Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: HexColor('535353'),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),

                    Text('Verification',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),

                    SizedBox(width: 20,),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),


                Column(

                  children: [
                    Text('Your verification code have been sent to ',),
                    Text('your email'),
                  ],
                ),

                SizedBox(height: 45,),

                Container(
                  width: double.infinity,
                  height: 599,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: HexColor('#D4DFDA'),
                  ),

                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(

                        ),


                        keyboardType: TextInputType.number,

                      )
                    ],

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

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
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
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
                    ),

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
                      Padding(
                        padding: const EdgeInsets.all(29.0),
                        child: TextField(

                          strutStyle: const StrutStyle(height: 1.5),
                          keyboardType: TextInputType.number,

                          // controller: _passwordcontroller,

                          decoration: InputDecoration(

                            fillColor: HexColor('CFF3E1'),
                            filled: true,

                            border: const OutlineInputBorder(

                            
                            ),

                          ),
                        ),
                      ),

                      Column(
                        children: [
                          Text('01:12',style: TextStyle(
                            fontSize: 12,
                            color: HexColor('535353'),
                          ),),

                          SizedBox(height: 10,),

                          Text('Resend Code',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: HexColor('535353'),
                          ),),
                        ],
                      ),

                      // verify button
                      Padding(
                        padding: const EdgeInsets.all(29.0),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                            color: HexColor('CFF3E1'),
                          ),
                          child: const Center(
                            child: Text('Verify',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                          ),
                        ),
                      ),
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

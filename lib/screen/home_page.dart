import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List<bool> _isChecked = List<bool>.filled(10, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.black, size: 35,),
            onPressed: () {
              // Handle logout icon press
            },
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black, size: 35,),
            onPressed: () {
            // Handle account icon press
            },
          ),
        ],
      ),
      backgroundColor: tdWhite,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
               Text(
                'To-Do',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, 
                  fontSize: 32,
                  color: Colors.black),
              ),

              const SizedBox(height: 8, width: 1,),

              //Horizontal Line
              Container(
                height: 2,
                width: 261,
                padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 31,),

              Expanded(
                child: 
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Container(
                        width: 184,
                        height: 42,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding (
                          padding: const EdgeInsets.only(left : 10.0),
                          child: Text(
                              'Task $index',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.normal
                              ),
                            ),
                        ),
                        ), 
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width: 50,
                              height: 42,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Checkbox(
                                value: _isChecked[index], 
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                    setState(() {
                                      _isChecked[index] = value!;
                                    });
                                },
                              ),
                            ),
                            
                            SizedBox(width: 4),

                            SizedBox(
                              width: 50,
                              height: 42,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                  
                                  }, 
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white, backgroundColor: Colors.black,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      side : BorderSide(color:  Colors.black),
                                    )
                                  ),
                                  child: Text(
                                    '-',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32
                                    ),
                                  ),
                                ),
                              ),
                            ), 
                          ],
                        ),
                      );
                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
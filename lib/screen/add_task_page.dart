import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/constants/colors.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdWhite,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              SizedBox(height: 104,),
              //Login Text
              Text(
                'Add New Task',
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

              SizedBox(height: 48,),

              SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ),
                      decoration: InputDecoration(
                          
                          labelText: 'To-Do',
                          labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color : const Color.fromARGB(53, 0, 0, 0)
                          ),
                          floatingLabelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color :  Colors.black
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.black, width: 1), 
                          ),
                        ),
                      ),
                  ),

                  SizedBox(height: 48,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                      SizedBox(
                        width: 157,
                        height: 53,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                offset: const Offset(0, 4)
                              )
                            ]
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
                              'Add Task',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              ),
                            ),
                          ),
                        ),
                      ),      

                      SizedBox(
                        width: 157,
                        height: 53,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                offset: const Offset(0, 4)
                              )
                            ]
                          ),
                          child: ElevatedButton(
                            onPressed: () {

                            }, 
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color.fromARGB(255, 0, 0, 0), backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                side : BorderSide(color:  Colors.black),
                              )
                            ),
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              ),
                            ),
                          ),
                        ),
                      ),          
                   ],
                )
            ],        
          ),        
        ),        
      ),        
    );        
  }       
}
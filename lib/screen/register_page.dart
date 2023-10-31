import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/constants/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
bool _isHiddenPassword = true;
bool _isHiddenConfirmedPassword = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdWhite,
      body: SafeArea(
        child : Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Login Text
              Text(
                'Register',
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

              const SizedBox(height: 47, width: 47),

              //Username TextField
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ),
                      decoration: InputDecoration(
                          
                          labelText: 'Username',
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

                  const SizedBox(height: 25),

                  // email textfield
                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ),
                      decoration: InputDecoration(
                          
                          labelText: 'Email',
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

                  const SizedBox(height: 25),

                  // confirm password textfield

                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      obscureText: _isHiddenPassword,
                  
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isHiddenPassword = !_isHiddenPassword;
                              });
                            },
                            icon: Icon(
                              _isHiddenPassword ? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            )
                          ),
                          labelText: 'Password',
                          labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color :  const Color.fromARGB(53, 0, 0, 0)
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

                  const SizedBox(height: 25),


                  // Confirm Password TextField

                  SizedBox(
                    width: 265,
                    height: 42,
                    child: TextField(
                      obscureText: _isHiddenConfirmedPassword,
                  
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isHiddenConfirmedPassword = !_isHiddenConfirmedPassword;
                              });
                            },
                            icon: Icon(
                              _isHiddenConfirmedPassword ? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            )
                          ),
                          labelText: 'Confirm Password',
                          labelStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color :  const Color.fromARGB(53, 0, 0, 0)
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

              SizedBox(width: 50, height: 25,),

              //Register Button
              SizedBox(
                width: 265,
                height: 46,
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
                      'Register',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),
                    ),
                  ),
                ),
              ),

              Row(
              //Dont have an account text
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.montserrat(
                      color : Colors.black.withOpacity(0.53),
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                    )
                  ),

                  const SizedBox(width: 20),
                  
                  //sign up button
                  TextButton(
                    onPressed: () {
                      // Handle sign up logic here
                    },
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color : Colors.black
                      )
                    ),
                  ),
                ],
                ),
                ],
              ),
            ],
            )
          ),
        ),
      ),
    );
  }
}
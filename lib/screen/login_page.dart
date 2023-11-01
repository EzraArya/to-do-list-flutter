// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:to_do_list/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                'Login',
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
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 265,
                      height: 42,
                      child: TextFormField(
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                        ),
                        decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
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
                            border:  OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black, width: 1), 
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black, width: 1), 
                            ),
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? true){
                              return "* Required";
                            } else {
                              return null;
                            }
                          },
                        ),
                    ),
              
                    const SizedBox(height: 25),
              
                    //Password TextField
              
                    SizedBox(
                      width: 265,
                      height: 42,
                      child: TextFormField(
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isHidden = !_isHidden;
                                });
                              },
                              icon: Icon(
                                _isHidden ? Icons.visibility : Icons.visibility_off,
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
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black, width: 1), 
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black, width: 1), 
                            ),
                          ),
                          validator: (value) {
                            if (value?.isEmpty ?? true){
                              return "* Required";
                            } else {
                              return null;
                          }
                        },  
                        ),
                    ),
              
                    //Forgot Password
                    Padding(
                      padding: const EdgeInsets.only(right: 55),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              // Handle forgot password
                            },
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              
                SizedBox(width: 50, height: 25,),
              
                //Login Button
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
                        if(_formKey.currentState?.validate() ?? false){
                          print('object');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Form is not valid!'))
                          );
                        }
                      }, 
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          side : BorderSide(color:  Colors.black),
                        )
                      ),
                      child: Text(
                        'Login',
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
                      "Don't have an account?",
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
                        'Sign Up',
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
              ),
            ],
            )
          ),
        ),
      ),
    );
  }
}
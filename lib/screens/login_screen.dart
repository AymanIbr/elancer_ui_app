import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TapGestureRecognizer _tapGestureRecognizer;


  bool _obscure = true ;

  String? _emailErrorValue ;
  String? _passwordErrorValue;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = CreateNewAccountAction;

  }


  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void CreateNewAccountAction(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: Text('SIGN IN',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('SIGN IN',
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              'Login to Continue Your Account',
              style: GoogleFonts.nunito(
                height: 0.8,
                color: Color(0xFF716787),
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: _emailTextController,
              style: GoogleFonts.nunito(),
              // minLines: 2,
              // maxLines: 2,
              // onTap: ()=>print('Tapped'),
              // onChanged: (String value) => print('$value'),
              // readOnly: true,
              // enabled: true,
              // textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              //*************************************\\
              //   cursorColor: Colors.pink,
              // cursorWidth: 10,
              // cursorHeight: 10,
              // cursorRadius: Radius.circular(10),
              // showCursor: false,
              //*************************************\\
              // obscureText: true,
              // obscuringCharacter: "#",
              //*************************************\\
              // textInputAction: TextInputAction.search,
              // onSubmitted: (String value)=>print(value),
              //*************************************\\
              // keyboardType: TextInputType.phone,
              // textCapitalization: TextCapitalization.words,
              //*************************************\\

              // maxLength: 30,
              // buildCounter:(
              //     BuildContext context, {
              //     required int currentLength,
              //     required int? maxLength,
              //     required bool isFocused,
              //     }){ return isFocused ? Text('$currentLength - $maxLength') : null ;
              // } ,
              minLines: null,
              maxLines: null,
              expands: true,

              // maxLength: 25,

              // enabled: false,
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  minHeight: 50,
                  maxHeight: _emailErrorValue == null ? 50 : 75,
                ),

                errorText: _emailErrorValue,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 3,

                hintText: 'Email',
                hintStyle: GoogleFonts.nunito(),
                // contentPadding: EdgeInsets.zero,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),

               //*************************************\\
                // border: InputBorder.none
                //   border: OutlineInputBorder(
                //     borderSide: BorderSide(color: Colors.pink),
                //     borderRadius: BorderRadius.circular(10),
                //   )

                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.red.shade900,
                    width: 1
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.red.shade900,
                      width: 1
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1
                  ),
                ),
               focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide(
                   color: Colors.pink.shade300,
                   width: 1,
                 )
               ),
               disabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey.shade300),
                 borderRadius: BorderRadius.circular(10)
               ),

               //*************************************\\
                // counterText: ''
                //*************************************\\
                // hintText: 'Email',
                // hintMaxLines: 1,
                // hintStyle: GoogleFonts.nunito(),
                // hintTextDirection: TextDirection.ltr
                //*************************************\\
                // labelText: 'Email',
                // labelStyle: GoogleFonts.nunito(),
                // floatingLabelStyle: GoogleFonts.nunito(),
                // floatingLabelAlignment: FloatingLabelAlignment.center,
                // floatingLabelBehavior: FloatingLabelBehavior.never
                //*************************************\\
                // fillColor: Colors.grey.shade300,
                // filled: true
                //*************************************\\
                // prefixIcon: Icon(Icons.email),
                // prefix: Icon(Icons.email),
                // prefixText: 'Ucase-'
                //*************************************\\
                //   suffixIcon: Icon(Icons.send),
                // suffix: Icon(Icons.send),
                // suffixText: 'Valid',
                // suffixIcon:IconButton(onPressed: (){},
                //     icon: Icon(Icons.remove_red_eye)),
                //*************************************\\
                //   icon: Icon(Icons.email)
                //*************************************\\
                // helperText: 'email@ucase.edu.up',
                // helperStyle: GoogleFonts.nunito(),
                // helperMaxLines: 1
                //*************************************\\
                // errorText: 'Enter Correct email',
                // errorStyle: GoogleFonts.nunito(),
                // errorMaxLines: 1
                //*************************************\\

                //*************************************\\
              ),


            ),
            SizedBox(height: 10,),
            TextField(
              controller: _passwordTextController,
              obscureText: _obscure,
              style: GoogleFonts.nunito(),

              minLines: 1,
              maxLines: 1,
              expands: false,

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: (){
                  setState(()=> _obscure =! _obscure);
                }, icon:
                Icon(
                   _obscure ? Icons.visibility : Icons.visibility_off
                ),
                ),
                errorText: _passwordErrorValue,
                errorStyle: GoogleFonts.nunito(),
                errorMaxLines: 3,

                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                constraints: BoxConstraints(
                  maxHeight: _passwordErrorValue == null ? 50 : 75,
                  minHeight: 50 ,
                ),

                hintText: 'Password',
                hintStyle: GoogleFonts.nunito(),

                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.red.shade900,
                      width: 1
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.red.shade900,
                      width: 1
                  ),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.pink.shade300,
                      width: 1,
                    )
                ),


              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: ()=>PerformLogin(),
                child: Text('LOGIN'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 10,),
            RichText(
              text: TextSpan(
              text: 'Don\'t have an account ',
                style: GoogleFonts.nunito(
                    color : Colors.grey.shade700
                ),
                children: [
                  TextSpan(
                    text: 'Create Now!',
                    recognizer: _tapGestureRecognizer,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      decorationStyle: TextDecorationStyle.solid,
                      decoration: TextDecoration.underline
                    ),
                  ),
                  // TextSpan(text: ' '),
                ],
            ),
            ),
          ],
        ),
      ),
    );
  }
  void PerformLogin(){
    if(CheckData()){
      login();
    }
  }

  bool CheckData(){
    if(_emailTextController.text.isNotEmpty && _passwordTextController.text.isNotEmpty){
      _ControllerErrorValue();
      return true ;
    }
    _ControllerErrorValue();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content : Text('Error , enter required data !'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          dismissDirection: DismissDirection.horizontal,
        ),
    );
    return false;
  }
  void _ControllerErrorValue(){
    setState((){
      _emailErrorValue = _emailTextController.text.isEmpty ? 'Enter Email' : null ;
      _passwordErrorValue = _passwordTextController.text.isEmpty ? 'Enter Password' : null ;
    });
  }
  void login(){
    // Navigator.pushReplacementNamed(context, '/users_screen');
    // Navigator.pushReplacementNamed(context, '/categories_screen');
    Navigator.pushReplacementNamed(context,'/bottom_navigation_screen');
    // Navigator.pushReplacementNamed(context,'/home_screen');
    // Navigator.pushReplacementNamed(context, '/setting_screen');
  }
}

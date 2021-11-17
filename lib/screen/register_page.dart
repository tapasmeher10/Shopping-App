import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saree_center/screen/custom_input.dart';
import 'constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  //build an alert dialog to dislay eeror
  Future<void>_alertDialogBuilder(String error) async {
    return showDialog(context: context,barrierDismissible: false, builder:
    (context){
      return AlertDialog(
        title: Text("Error"),
        content: Container(
          child: Text("error"),
        ),
        actions: [
          FlatButton(child: Text("Close dialog"),onPressed: (){
            Navigator.pop(context);
          },)
        ],
      );
    });
  }

  //create a new user account

  Future<String?> _createAccount() async {
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email:_registerEmail, password: _registerPassword
      );
      return null;
    } on FirebaseAuthException catch(e){
      if (e.code == "weak-password"){
        return 'The password provide is too weak.';
      }else if (e.code =="email-already-in-use") {
        return 'The account already exists for that email.';
      }
      return (e).message;
    }catch (e){
      return e.toString();
    }
  }

  void _submitForm() async{
    String? _createAccountFeedback = await _createAccount();
    if(_createAccountFeedback != null){
      _alertDialogBuilder( _createAccountFeedback);
    }
  }

  //form input fields values

  String _registerEmail= "";
  String _registerPassword="";
  //focus node for input field

  late FocusNode _passwordFocusNode;
  @override
  void initState() {
    _passwordFocusNode =FocusNode();
    super.initState();
  }
  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Create Your Account"
                  ,textAlign: TextAlign.center,
                  style: Constants.BoldHeading,),

                Container(
                    margin: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(child: Text("Signup",
                            style:TextStyle(fontSize: 40,
                                color:Colors.amber[700]),)),
                          SizedBox(height: 40),
                          CustomInput(hintText: "Email",
                          onChanged: (value){

                            _registerEmail= value;
                          },
                            focusNode: _passwordFocusNode,
                            onSubmit: (value){
                            _passwordFocusNode.requestFocus();
                            },
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(height: 10),
                          CustomInput(hintText: "Password",
                          onChanged: (value){
                            _registerPassword=value;
                          },
                            focusNode: _passwordFocusNode,

                            isPasswordField: true,
                          onSubmit: (value){
                            _submitForm();
                          },),
                          GestureDetector(
                            onTap:(){
                              _submitForm();
                            },
                            child: Container(
                              height: 55.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(

                                  border: Border.all(
                                    color: Colors.amberAccent,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(11.0)
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 15.0
                              ),
                              child: Text("Sign up",
                                style:TextStyle(fontSize: 16.0,color: Colors.black,
                                    fontWeight: FontWeight.w600) ,),
                            ),
                          )

                        ])),
              GestureDetector(
                onTap:(){
                },
                child: Container(
                  height: 55.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.amberAccent,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(11.0)
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 24.0
                  ),
                  child: Text("Submit",
                    style:TextStyle(fontSize: 16.0,color: Colors.black,
                        fontWeight: FontWeight.w600) ,),
                ),
              )]
                )

            ),
          ),);
  }
}

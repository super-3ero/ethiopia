import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:work_space_ethiopia/screens/MyProfile/MyProfile.dart';
import 'package:work_space_ethiopia/screens/main_screen.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class PhoneVerification extends StatefulWidget{
   @override
  _PhoneVerification createState() => _PhoneVerification();
}

class _PhoneVerification extends State<PhoneVerification>{

  TextEditingController controller = TextEditingController(text: "");
  String thisText = "";
  int pinLength = 6;
  bool hasError = false;
  String errorMessage;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    Widget _smallText(String value ){
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Text(value , textAlign: TextAlign.center, style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white,
              fontSize: 16.0,
              fontFamily: 'Roboto'

          ),
          ),
        ),
      );
    }
    Widget _resendCode(){
      return Center(
        child: Container(
          width: 250.0,
          child: InkWell(
            child: Padding(
              padding: EdgeInsets.only(left: 0.0, right: 0.0 , top: 50),
              child: RaisedButton(
                textColor: Colors.white70,
                color: AppColors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Resend Code", style: TextStyle(

                    fontFamily: 'roboto',
                    fontSize: 18,

                  ),),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
        ),
      );
    }
    Widget _mainText(String value) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Text(value, textAlign: TextAlign.center, style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Roboto'

            ),
            ),
          ),
        );
      }
      Widget _codeInputs(){
      return Padding(
        padding: const EdgeInsets.only(top:35.0),
        child: PinCodeTextField(
          autofocus: false,
          pinBoxHeight: 35,
          pinBoxWidth: 35,
          controller: controller,
          hideCharacter: false,
          isCupertino: false,
          highlight: true,
          highlightColor: Colors.white70,
          defaultBorderColor: Colors.white30,
          hasTextBorderColor: AppColors.grey,
          maxLength: pinLength,
          hasError: hasError,
          maskCharacter: "😎",
          onTextChanged: (text) {
            setState(() {
              hasError = false;
            });
          },
          onDone: (text) {
            print("DONE $text");
            print("DONE CONTROLLER ${controller.text}");
          },
          wrapAlignment: WrapAlignment.spaceEvenly,
          pinBoxDecoration:
          ProvidedPinBoxDecoration.defaultPinBoxDecoration,
          pinTextStyle: TextStyle(fontSize: 20.0),
          pinTextAnimatedSwitcherTransition:
          ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
          pinTextAnimatedSwitcherDuration:
          Duration(milliseconds: 300),
//                    highlightAnimation: true,
          highlightAnimationBeginColor: Colors.black,
          highlightAnimationEndColor: Colors.white12,
          keyboardType: TextInputType.number,
        ),
      );

      }
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1,0.4,0.7],
                  colors: [
                    Color(0xFF3594DD),
                    Color(0xFF4563DB),
                    Color(0xFF5036D5),

                  ]
              )
          ),
          child: ListView(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: Icon(Icons.keyboard_backspace,color: Colors.white,),
                        onPressed: () {

                        },
                      ),
                    ),
                    Center(
                      child: Container(
                        alignment:Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Verify' , textAlign: TextAlign.center, style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 22.0,
                          ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        _mainText("Enter verification code"),
                        _smallText("Please enter the verfication code \n we have sent"),
                        _codeInputs(),
                        _resendCode()
                        
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
          ,
        ),
      ),
    );
  }

}
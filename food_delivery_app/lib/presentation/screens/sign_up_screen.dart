import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/utilities/utilities.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/presentation/presentation.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _togglePasswordVisibility = false;
  bool _toggleConfirmPasswordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(16),
              ),
              child: Column(
                children: [
                  _signUpText(),
                  _loginUserInput(),
                  _signUpButton(),
                  Divider(height: ScreenUtil().setHeight(20)),
                  _signInOption(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _signUpText() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(70),
        bottom: ScreenUtil().setHeight(100),
      ),
      child: AppTextDisplay(
        translation: AppStrings.signUp,
        textAlign: TextAlign.center,
        textStyle: AppTextStyles.regularBold.copyWith(fontSize: 40),
      ),
    );
  }

  Widget _textFormField(String hint) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context).translate(hint),
        hintStyle: AppTextStyles.textFieldHint,
      ),
    );
  }

  Widget _passwordTextFormField(String hint, bool isObsecureText) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context).translate(hint),
        hintStyle: AppTextStyles.textFieldHint,
        suffixIcon: IconButton(
          icon: Icon(
            isObsecureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              isObsecureText = !isObsecureText;
            });
          },
        ),
      ),
      obscureText: _togglePasswordVisibility,
    );
  }

  Widget _loginUserInput() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(10),
      ),
      child: Card(
        elevation: 5.0,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(20),
            vertical: ScreenUtil().setHeight(20),
          ),
          child: Column(
            children: [
              _textFormField(AppStrings.usernameHint),
              SizedBox(height: ScreenUtil().setHeight(12)),
              _textFormField(AppStrings.emailHint),
              SizedBox(height: ScreenUtil().setHeight(12)),
              _passwordTextFormField(
                AppStrings.passwordHint,
                _togglePasswordVisibility,
              ),
              SizedBox(height: ScreenUtil().setHeight(12)),
              _passwordTextFormField(
                AppStrings.confirmPasswordHint,
                _togglePasswordVisibility,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
      child: MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.mainScreen);
        },
        height: ScreenUtil().setHeight(40),
        color: AppColors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        minWidth: ScreenUtil().screenWidth,
        child: AppTextDisplay(
          translation: AppStrings.signUp,
          textStyle: AppTextStyles.regularBold.copyWith(
            color: AppColors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _signInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: ScreenUtil().setWidth(10),
          ),
          child: AppTextDisplay(
            translation: AppStrings.alreadyHaveAnAccount,
            textStyle: AppTextStyles.textFieldHint.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.signInScreen);
          },
          child: AppTextDisplay(
            translation: AppStrings.signIn,
            textStyle: AppTextStyles.textFieldHint.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }
}

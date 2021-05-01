import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/presentation/presentation.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/utilities/app_localizations.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _toggleVisibility = false;

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
                  _signInText(),
                  _forgetPasswordButton(),
                  _loginUserInput(),
                  _signInButton(),
                  Divider(height: ScreenUtil().setHeight(20)),
                  _signUpOption(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _signInText() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(70),
        bottom: ScreenUtil().setHeight(100),
      ),
      child: AppTextDisplay(
        translation: AppStrings.signIn,
        textAlign: TextAlign.center,
        textStyle: AppTextStyles.regularBold.copyWith(fontSize: 40),
      ),
    );
  }

  Widget _usernameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText:
            AppLocalizations.of(context).translate(AppStrings.usernameHint),
        hintStyle: AppTextStyles.textFieldHint,
      ),
    );
  }

  Widget _passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText:
            AppLocalizations.of(context).translate(AppStrings.passwordHint),
        hintStyle: AppTextStyles.textFieldHint,
        suffixIcon: IconButton(
          icon: Icon(
            _toggleVisibility ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
        ),
      ),
      obscureText: _toggleVisibility,
    );
  }

  Widget _forgetPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: AppTextDisplay(
            translation: AppStrings.forgetPassword,
            textStyle: AppTextStyles.regularBold.copyWith(
              fontSize: 18,
              color: AppColors.blueAccent,
            ),
          ),
        ),
      ],
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
              _usernameTextFormField(),
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(12),
                ),
                child: _passwordTextFormField(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
      child: MaterialButton(
        onPressed: () {},
        height: ScreenUtil().setHeight(40),
        color: AppColors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        minWidth: ScreenUtil().screenWidth,
        child: AppTextDisplay(
          translation: AppStrings.signIn,
          textStyle: AppTextStyles.regularBold.copyWith(
            color: AppColors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: ScreenUtil().setWidth(10),
          ),
          child: AppTextDisplay(
            translation: AppStrings.dontHaveAnAccount,
            textStyle: AppTextStyles.textFieldHint.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: AppTextDisplay(
            translation: AppStrings.signUp,
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
